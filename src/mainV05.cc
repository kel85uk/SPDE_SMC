/** Version 0.5 (in progress): Rudimentary solver + MC + Auto-rejection + Better layout*/
static char help[] = "Solves a variable Poisson problem with KSP in FVM (TODO: EnKF).\n\n";

#include <Array.hh>
#include <mainv05_funcs.h>

#undef __FUNCT__
#define __FUNCT__ "main"
int main(int argc,char **args)
{
  UserCtx					userctx;
  PetscErrorCode		ierr;
  PetscInt					m = 6,n = 7,t,tmax = 2,i,Ii,II,j,J,JJ,N,N2; // Simulation variables
  PetscScalar			hx,hy,x,y,xr,yr,RE,radius = 0.;
  PetscScalar			*rho,*userb,*userx;
  PetscReal				enorm;
  Vec							rhovar, rhomean, solvar, solmean, fvec, Xvec, Yvec;
	PetscInt					nTrials = 10, NT; // MC variables
	PetscScalar			uncertainty = 0.;  //Standard deviation of the rho variable (Assumed constant)
	/* MPI variables */
	PetscMPIInt			rank;
  /*
     Initialize the PETSc libraries
  */
  PetscInitialize(&argc,&args,(char*)0,help);
//  MPI_Comm_rank(PETSC_COMM_WORLD,&rank);
  ierr = PetscOptionsGetInt(NULL,"-m",&m,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetInt(NULL,"-n",&n,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UN",&userctx.UN,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-US",&userctx.US,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UE",&userctx.UE,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UW",&userctx.UW,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-RE",&RE,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetInt(NULL,"-nTrials",&nTrials,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-uncertainty",&uncertainty,NULL);CHKERRQ(ierr);
  /*
     Create the empty sparse matrix and linear solver data structures
  */
  ierr = UserInitializeLinearSolver(m,n,userctx);CHKERRQ(ierr);
  N    = m*n;
  N2		 = (m+2)*(n+2);
	ierr = PetscMalloc(N*sizeof(PetscScalar),&userx);CHKERRQ(ierr);
	ierr = PetscMalloc(N*sizeof(PetscScalar),&userb);CHKERRQ(ierr);
  /*
      Allocate an array to hold the coefficients in the elliptic operator
  */
	ierr = PetscMalloc(N2*sizeof(PetscScalar),&rho);CHKERRQ(ierr);
	/** If root process, then set these arrays for MC computation */
//	if (rank == 0){
		Array		X(N);
		Array		Y(N);
		Array		XR(N2);
		Array		YR(N2);
		Array		userxMC(N,nTrials); // Containers for MC of arrays at each trial
		Array		rho1(N2,nTrials);
		Array		rho2(N,nTrials);
		Array		rhoMC(N,2); //		0	-	Mean value at cell N, 1 - SD at cell N
		Array		solMC(N,2);	//		0	-	Mean value at cell N, 1 - SD at cell N
//	}
	/** Each slave and root has its own X, Y arrays */
	ierr		= PetscPrintf(PETSC_COMM_WORLD,"Setup grid and parameters...\n");CHKERRQ(ierr);
  hx = 1.0/m;
  hy = 1.0/n;
  userctx.hx2 = hx*hx;
  userctx.hy2 = hy*hy;
	/* Set grid coordinates (with ghost cells)*/
  yr = -hy/2;
  for (j=0; j<=n+1; ++j) {
    xr = -hx/2;
    for (i=0; i<=m+1; ++i) {
      II = i + (m+2)*j;
      XR(II) = xr;
      YR(II) = yr;
			xr += hx;
    }
    yr += hy;
  }
	/* Set grid coordinates (internal cells)*/
  y = hy/2;
  for (j=0; j<=n-1; ++j) {
    x = hx/2;
    for (i=0; i<=m-1; ++i) {
      Ii = i + (m)*j;
      X(Ii) = x;
      Y(Ii) = y;
			x += hx;
    }
    y += hy;
  }
  ierr		= PetscPrintf(PETSC_COMM_WORLD,"Entering MC loop...\n");CHKERRQ(ierr);
		NT		=	0;
//		std::cout << m << std::endl;
		while(NT < nTrials){
			ierr		= PetscPrintf(PETSC_COMM_WORLD,"Trial %d\n",NT);CHKERRQ(ierr);
			/* Set rho array first */
			for (j=0; j<=n+1; ++j) {
				for (i=0; i<=m+1; ++i) {
				  II		=	i + (m+2)*j;
				  xr		=	XR(II);
				  yr		=	YR(II);
				  radius = std::sqrt((xr - 0.5)*(xr - 0.5) + (yr - 0.5)*(yr - 0.5));		    
					boost::variate_generator<boost::mt19937, boost::normal_distribution<> >	generator(boost::mt19937(time(0)),boost::normal_distribution<>(rho_calculate(radius,RE,uncertainty),uncertainty));
				  PetscScalar result = generator();
				  rho1(II,NT) = result;
				}
			}
			ierr		= PetscPrintf(PETSC_COMM_WORLD,"Finished randomizing rho %d\n",NT);CHKERRQ(ierr);
			// Copy rho1_NT to a local rho for matrix A_NT to be set up
			for (int i = 0; i < N2; ++i)
				rho[i]		=	rho1(i,NT);
			/* Now set the rest of the arrays, userb */
			set_b_vector(m,n,RE,NT,userctx,X,Y,rho,rho2,userb);
			// Solve Ax = b with A and b from the rho value at each NT
			ierr		= PetscPrintf(PETSC_COMM_WORLD,"Solving Ax = b at Trial %d\n",NT);CHKERRQ(ierr);
			KSPConvergedReason reason;
			ierr		=	UserDoLinearSolver(rho,userctx,userb,userx,&reason);CHKERRQ(ierr);
//			ierr		= PetscPrintf(PETSC_COMM_WORLD,"Converged reason: %d\n",reason);CHKERRQ(ierr);
			if(reason < 0) // Reject solution and restart the process all over again
				continue;
			// Copy x_NT to an MC array container for later processing
			for (int i = 0; i < N; ++i)
				userxMC(i,NT) = userx[i];
			++NT;
	}
	// Calculate mean and variances of solution, and rho at each cell
	for (int i = 0; i < N; ++i){
		solMC(i,0) = userxMC.row(i).mean();//mean_calc(userxMC.col(i));
		solMC(i,1) = userxMC.row(i).var();//var_calc(userxMC.col(i));
		rhoMC(i,0) = rho2.row(i).mean();//mean_calc(rho2.col(i));
		rhoMC(i,1) = rho2.row(i).var();//var_calc(rho2.col(i));
	}
	#include <vector_postprocs.h>

  ierr = PetscFree(userx);CHKERRQ(ierr);
  ierr = PetscFree(userb);CHKERRQ(ierr);
  ierr = UserFinalizeLinearSolver(&userctx);CHKERRQ(ierr);
  ierr = PetscFinalize();
	
  return 0;
}
