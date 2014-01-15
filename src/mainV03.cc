/** Version 0.3 (in progress): Rudimentary solver + MC + Auto-rejection */
static char help[] = "Solves a variable Poisson problem with KSP in FVM (TODO: EnKF).\n\n";

#include <Array.hh>
#include <time.h>
#include <boost/random/normal_distribution.hpp>
#include <boost/random/mersenne_twister.hpp>
#include <boost/random/variate_generator.hpp>
#include <cmath>
#include <vector>

/*
    User-defined context that contains all the data structures used
    in the linear solution process.
*/
typedef struct {
  Vec         x,b;       /* solution vector, right-hand-side vector */
  Mat         A;          /* sparse matrix */
  KSP         ksp;       /* linear solver context */
  PetscInt    m,n;       /* grid dimensions */
  PetscScalar hx2,hy2;
} UserCtx;

extern PetscErrorCode UserInitializeLinearSolver(PetscInt,PetscInt,UserCtx*);
extern PetscErrorCode UserFinalizeLinearSolver(UserCtx*);
extern PetscErrorCode UserDoLinearSolver(PetscScalar*,UserCtx *userctx,PetscScalar *b,PetscScalar *x,KSPConvergedReason *reason);
PetscScalar	rho_calculate(PetscScalar,PetscScalar,PetscScalar);

#undef __FUNCT__
#define __FUNCT__ "main"
int main(int argc,char **args)
{
  UserCtx					userctx;
  PetscErrorCode		ierr;
  PetscInt					m = 6,n = 7,t,tmax = 2,i,Ii,II,j,J,JJ,N,N2; // Simulation variables
  PetscScalar			hx,hy,x,y,xr,yr,RE,radius = 0.;
  PetscScalar			*userx,*rho,*userb,*X,*Y,*XR,*YR;
  PetscScalar			UN,UE,US,UW = 0.;
  PetscReal				enorm;
  Vec							rhovar, rhomean, solvar, solmean, fvec, Xvec, Yvec;
	PetscInt					nTrials = 10, NT; // MC variables
	PetscScalar			uncertainty = 0.;  //Standard deviation of the rho variable (Assumed constant)

  /*
     Initialize the PETSc libraries
  */
  PetscInitialize(&argc,&args,(char*)0,help);

  /*
     The next two lines are for testing only; these allow the user to
     decide the grid size at runtime.
  */
  ierr = PetscOptionsGetInt(NULL,"-m",&m,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetInt(NULL,"-n",&n,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UN",&UN,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-US",&US,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UE",&UE,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-UW",&UW,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-RE",&RE,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetInt(NULL,"-nTrials",&nTrials,NULL);CHKERRQ(ierr);
  ierr = PetscOptionsGetScalar(NULL,"-uncertainty",&uncertainty,NULL);CHKERRQ(ierr);

  /*
     Create the empty sparse matrix and linear solver data structures
  */
  ierr = UserInitializeLinearSolver(m,n,&userctx);CHKERRQ(ierr);
  N    = m*n;
  N2		 = (m+2)*(n+2);
  /*
     Allocate arrays to hold the solution to the linear system.
     This is not normally done in PETSc programs, but in this case,
     since we are calling these routines from a non-PETSc program, we
     would like to reuse the data structures from another code. So in
     the context of a larger application these would be provided by
     other (non-PETSc) parts of the application code.
  */
	ierr = PetscMalloc(N*sizeof(PetscScalar),&userx);CHKERRQ(ierr);
	ierr = PetscMalloc(N*sizeof(PetscScalar),&userb);CHKERRQ(ierr);
  

  /*
      Allocate an array to hold the coefficients in the elliptic operator
  */
	ierr = PetscMalloc(N2*sizeof(PetscScalar),&rho);CHKERRQ(ierr);

  /*
     Fill up the array rho[] with the function rho(x,y) = x; fill the
     right-hand-side b[] and the solution with a known problem for testing.
  */
	ierr		= PetscMalloc(N*sizeof(PetscScalar),&X);CHKERRQ(ierr);
	ierr		= PetscMalloc(N*sizeof(PetscScalar),&Y);CHKERRQ(ierr);
	ierr		= PetscMalloc(N2*sizeof(PetscScalar),&XR);CHKERRQ(ierr);
	ierr		= PetscMalloc(N2*sizeof(PetscScalar),&YR);CHKERRQ(ierr);  
	Array		userxMC(N,nTrials); // Containers for MC of arrays at each trial
	Array		rho1(N2,nTrials);
	Array		rho2(N,nTrials);
	Array		rhoMC(N,2); //		0	-	Mean value at cell N, 1 - SD at cell N
	Array		solMC(N,2);	//		0	-	Mean value at cell N, 1 - SD at cell N
	ierr		= PetscPrintf(PETSC_COMM_WORLD,"Setup grid and parameters...\n");CHKERRQ(ierr);
  hx = 1.0/m;
  hy = 1.0/n;
	/* Set grid coordinates (with ghost cells)*/
  yr = -hy/2;
  for (j=0; j<=n+1; ++j) {
    xr = -hx/2;
    for (i=0; i<=m+1; ++i) {
      II = i + (m+2)*j;
      XR[II] = xr;
      YR[II] = yr;
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
      X[Ii] = x;
      Y[Ii] = y;
			x += hx;
    }
    y += hy;
  } 
  ierr		= PetscPrintf(PETSC_COMM_WORLD,"Entering MC loop...\n");CHKERRQ(ierr);
  NT			=	0;
  while(NT < nTrials){
		ierr		= PetscPrintf(PETSC_COMM_WORLD,"Trial %d\n",NT);CHKERRQ(ierr);
		/* Set rho array first */
		for (j=0; j<=n+1; ++j) {
		  for (i=0; i<=m+1; ++i) {
		    II		=	i + (m+2)*j;
		    xr		=	XR[II];
		    yr		=	YR[II];
		    radius = std::sqrt((xr - 0.5)*(xr - 0.5) + (yr - 0.5)*(yr - 0.5));		    
				boost::variate_generator<boost::mt19937, boost::normal_distribution<> >	generator(boost::mt19937(time(0)),boost::normal_distribution<>(rho_calculate(radius,RE,uncertainty),uncertainty));
		    double result = generator();
		    rho1(II,NT) = result;		    
//		    std::cout << II << std::endl;
		  }
		}
		ierr		= PetscPrintf(PETSC_COMM_WORLD,"Finished randomizing rho %d\n",NT);CHKERRQ(ierr);
		/* Now set the rest of the arrays, userb */
		for (j = 0; j < n; ++j) {
		  for (i = 0; i < m; ++i) {
		  		Ii		=	(i) + m*(j); // Counter for internal cells
		  		II		=	(i+1) + (m+2)*(j+1); // Counter for cells with ghosts
		  		x		=	X[Ii];
		  		y		=	Y[Ii];
		  		radius = std::sqrt((x - 0.5)*(x - 0.5) + (y - 0.5)*(y - 0.5));
		  		if(radius <= RE)
		    		userb[Ii]		= -9.81*radius/RE;
		    	else
		    		userb[Ii]		=	-9.81*RE/(radius);
		    rho2(Ii,NT) = rho1(II,NT);
		    if (i == 0){
					J = II - 1;
		    		userb[Ii] += (0.5)*(rho1(II,NT) + rho1(J,NT))*UW*2/(hx*hx);
		  		}
		  		else if (i == (m-1)){
		  			J = II + 1;
		  			userb[Ii] += (0.5)*(rho1(II,NT) + rho1(J,NT))*UE*2/(hx*hx);
		  		}
		  		else if (j == 0){
		  			J = II - (m+2);
		  			userb[Ii] += (0.5)*(rho1(II,NT) + rho1(J,NT))*US*2/(hy*hy);
		  		}
		  		else if (j == (n-1)){
		  			J = II + (m+2);
		  			userb[Ii] += (0.5)*(rho1(II,NT) + rho1(J,NT))*UN*2/(hy*hy);
					}
		  }
		}
			// Copy rho1_NT to a local rho for matrix A_NT to be set up
			for (int i = 0; i < N2; ++i)
				rho[i]		=	rho1(i,NT);
//				rho		= rho1.petscME(NT);
			// Solve Ax = b with A and b from the rho value at each NT
			ierr		= PetscPrintf(PETSC_COMM_WORLD,"Solving Ax = b at Trial %d\n",NT);CHKERRQ(ierr);
			KSPConvergedReason reason;
			ierr		=	UserDoLinearSolver(rho,&userctx,userb,userx,&reason);CHKERRQ(ierr);
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
	std::string normtype = "2";
	std::cout << "Norm of variance of solution = " << solMC.col(1).norm(normtype) << std::endl;
	std::cout << "Mean of mean of solution = " << solMC.col(0).mean() << std::endl;
	// Export arrays for visualization
	VecCreate(PETSC_COMM_WORLD,&rhovar);
	VecSetSizes(rhovar,PETSC_DECIDE,N);
	VecSetType(rhovar,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&rhomean);
	VecSetSizes(rhomean,PETSC_DECIDE,N);
	VecSetType(rhomean,VECSEQ);	
	VecCreate(PETSC_COMM_WORLD,&Xvec);
	VecSetSizes(Xvec,PETSC_DECIDE,N);
	VecSetType(Xvec,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&Yvec);
	VecSetSizes(Yvec,PETSC_DECIDE,N);
	VecSetType(Yvec,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&solvar);
	VecSetSizes(solvar,PETSC_DECIDE,N);
	VecSetType(solvar,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&solmean);
	VecSetSizes(solmean,PETSC_DECIDE,N);
	VecSetType(solmean,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&fvec);
	VecSetSizes(fvec,PETSC_DECIDE,N);
	VecSetType(fvec,VECSEQ);			
	for (i = 0;i < N;++i){
		VecSetValues(rhovar,1,&i,&rhoMC(i,1),INSERT_VALUES);
		VecSetValues(rhomean,1,&i,&rhoMC(i,0),INSERT_VALUES);
		VecSetValues(Xvec,1,&i,&X[i],INSERT_VALUES);
		VecSetValues(Yvec,1,&i,&Y[i],INSERT_VALUES);
		VecSetValues(solvar,1,&i,&solMC(i,1),INSERT_VALUES);
		VecSetValues(solmean,1,&i,&solMC(i,0),INSERT_VALUES);
		VecSetValues(fvec,1,&i,&userb[i],INSERT_VALUES);		
	}
	PetscViewer rhovview,rhomview,solvview,solmview,fview,Xview,Yview;
	PetscViewerCreate(PETSC_COMM_WORLD,&rhomview);
	PetscViewerSetType(rhomview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"rho_mean.dat",&rhomview);
	PetscViewerCreate(PETSC_COMM_WORLD,&rhovview);
	PetscViewerSetType(rhovview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"rho_var.dat",&rhovview);
	PetscViewerCreate(PETSC_COMM_WORLD,&Xview);
	PetscViewerSetType(Xview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"X.dat",&Xview);
	PetscViewerCreate(PETSC_COMM_WORLD,&Yview);
	PetscViewerSetType(Yview,PETSCVIEWERASCII);	
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"Y.dat",&Yview);
	PetscViewerCreate(PETSC_COMM_WORLD,&solmview);
	PetscViewerSetType(solmview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"sol_mean.dat",&solmview);
	PetscViewerCreate(PETSC_COMM_WORLD,&solvview);
	PetscViewerSetType(solvview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"sol_var.dat",&solvview);	
	PetscViewerCreate(PETSC_COMM_WORLD,&fview);
	PetscViewerSetType(fview,PETSCVIEWERASCII);	
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"f.dat",&fview);			
	VecView(rhovar,rhovview);
	VecView(rhomean,rhomview);
	VecView(Xvec,Xview);
	VecView(Yvec,Yview);
	VecView(solvar,solvview);
	VecView(solmean,solmview);
	VecView(fvec,fview);	
//	VecDestroy(&rhov);
  /*
     We are all finished solving linear systems, so we clean up the
     data structures.
  */

  ierr = PetscFree(userx);CHKERRQ(ierr);
  ierr = PetscFree(userb);CHKERRQ(ierr);
  ierr = UserFinalizeLinearSolver(&userctx);CHKERRQ(ierr);
  ierr = PetscFinalize();
	
  return 0;
}
PetscScalar		rho_calculate(PetscScalar radius, PetscScalar RE, PetscScalar uncertainty){
  /* Create all the random number generator stuff (Upgrade gcc -> compile icc -> petsc to latest gcc 4.7 before using random */

	PetscScalar rho_mean = 0.;
	if(radius <= RE){
		rho_mean = (1e-3 - 1.0)*radius/RE + 1;	//PetscSinScalar(2.*PETSC_PI*xr)*PetscSinScalar(2.*PETSC_PI*yr);
	}
	else{
		rho_mean = 1e-3;
	}
	return rho_mean;
}

/* ------------------------------------------------------------------------*/
#undef __FUNCT__
#define __FUNCT__ "UserInitializedLinearSolve"
PetscErrorCode UserInitializeLinearSolver(PetscInt m,PetscInt n,UserCtx *userctx)
{
  PetscErrorCode ierr;
  PetscInt       N;
  /*
     Here we assume use of a grid of size m x n, with all points on the
     interior of the domain, i.e., we do not include the points corresponding
     to homogeneous Dirichlet boundary conditions.  We assume that the domain
     is [0,1]x[0,1].
  */
  userctx->m   = m;
  userctx->n   = n;
  userctx->hx2 = m*m;
  userctx->hy2 = n*n;
  N            = m*n;

  /*
     Create the sparse matrix. Preallocate 5 nonzeros per row.
  */
  ierr = MatCreateSeqAIJ(PETSC_COMM_SELF,N,N,5,0,&userctx->A);CHKERRQ(ierr);
  /*
     Create vectors. Here we create vectors with no memory allocated.
     This way, we can use the data structures already in the program
     by using VecPlaceArray() subroutine at a later stage.
  */
  ierr = VecCreateSeqWithArray(PETSC_COMM_SELF,1,N,NULL,&userctx->b);CHKERRQ(ierr);
  ierr = VecDuplicate(userctx->b,&userctx->x);CHKERRQ(ierr);
  /*
     Create linear solver context. This will be used repeatedly for all
     the linear solves needed.
  */
  ierr = KSPCreate(PETSC_COMM_SELF,&userctx->ksp);CHKERRQ(ierr);
  return 0;
}

#undef __FUNCT__
#define __FUNCT__ "UserDoLinearSolve"
/*
   Solves -div (rho grad psi) = F using finite differences.
   rho is a 2-dimensional array of size m by n, stored in Fortran
   style by columns. userb is a standard one-dimensional array.
*/
/* ------------------------------------------------------------------------*/
PetscErrorCode UserDoLinearSolver(PetscScalar *rho,UserCtx *userctx,PetscScalar *userb,PetscScalar *userx, KSPConvergedReason *reason)
{
  PetscErrorCode ierr;
  PetscInt       i,j,Ii,II,J,JJ,m = userctx->m,n = userctx->n;
  Mat            A = userctx->A;
  PC             pc;
  PetscScalar    vD,hx2 = userctx->hx2,hy2 = userctx->hy2,vN,vS,vE,vW;

  for (j = 0; j < n; ++j) {
    for (i = 0; i < m; ++i) {
    		Ii = i + m*j;
    		II = (i + 1) + (m+2)*(j + 1);
    		vS = 0.; vN = 0.; vW = 0.; vE = 0.; vD = 0.;
      if (j>0) {
				JJ			=	II - (m+2);
				J			= Ii - m;
				vS			= -.5*(rho[II] + rho[JJ])*hy2;
        ierr		= MatSetValues(A,1,&Ii,1,&J,&vS,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (j<n-1) {
        JJ			=	II + (m+2);
        J			=	Ii + m;
        vN			=	-.5*(rho[II] + rho[JJ])*hy2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vN,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (i>0) {
        JJ			=	II - 1;
        J			=	Ii - 1;
        vW			=	-.5*(rho[II] + rho[JJ])*hx2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vW,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (i<m-1) {
        JJ			=	II + 1;
        J			=	Ii + 1;
        vE			=	-.5*(rho[II] + rho[JJ])*hx2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vE,INSERT_VALUES);CHKERRQ(ierr);
      }
    		JJ			=	II - (m+2);
    		vS			= 0.5*(rho[II] + rho[JJ])*hy2;
    		JJ			=	II + (m+2);
    		vN			=	0.5*(rho[II] + rho[JJ])*hy2;
    		JJ			=	II - 1;
    		vW			=	0.5*(rho[II] + rho[JJ])*hx2;
    		JJ			=	II + 1;
    		vE			=	0.5*(rho[II] + rho[JJ])*hx2;
			vD			=		(vS + vN + vE + vW);    
      if (j == 0){
      		vD			+=		vS;
			}
      if (j == n-1){
				vD			+=		vN;
			}
      if (i == 0){
				vD			+=		vW;
			}
      if (i == m-1){
				vD			+=		vE;
			}
      ierr = MatSetValues(A,1,&Ii,1,&Ii,&vD,INSERT_VALUES);CHKERRQ(ierr);
    }
  }
  /*
     Assemble matrix
  */
  ierr = MatAssemblyBegin(A,MAT_FINAL_ASSEMBLY);CHKERRQ(ierr);
  ierr = MatAssemblyEnd(A,MAT_FINAL_ASSEMBLY);CHKERRQ(ierr);

  /*
     Set operators. Here the matrix that defines the linear system
     also serves as the preconditioning matrix. Since all the matrices
     will have the same nonzero pattern here, we indicate this so the
     linear solvers can take advantage of this.
  */
  ierr = KSPSetOperators(userctx->ksp,A,A,SAME_NONZERO_PATTERN);CHKERRQ(ierr);

  /*
     Set linear solver defaults for this problem (optional).
     - Here we set it to use direct LU factorization for the solution
  */
  ierr = KSPGetPC(userctx->ksp,&pc);CHKERRQ(ierr);
  ierr = PCSetType(pc,PCLU);CHKERRQ(ierr);

  /*
     Set runtime options, e.g.,
        -ksp_type <type> -pc_type <type> -ksp_monitor -ksp_rtol <rtol>
     These options will override those specified above as long as
     KSPSetFromOptions() is called _after_ any other customization
     routines.

     Run the program with the option -help to see all the possible
     linear solver options.
  */
  ierr = KSPSetFromOptions(userctx->ksp);CHKERRQ(ierr);

  /*
     This allows the PETSc linear solvers to compute the solution
     directly in the user's array rather than in the PETSc vector.

     This is essentially a hack and not highly recommend unless you
     are quite comfortable with using PETSc. In general, users should
     write their entire application using PETSc vectors rather than
     arrays.
  */
  ierr = VecPlaceArray(userctx->x,userx);CHKERRQ(ierr);
  ierr = VecPlaceArray(userctx->b,userb);CHKERRQ(ierr);

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                      Solve the linear system
     - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  ierr = KSPSolve(userctx->ksp,userctx->b,userctx->x);CHKERRQ(ierr);
	ierr		=	KSPGetConvergedReason(userctx->ksp,reason);CHKERRQ(ierr);
  /*
    Put back the PETSc array that belongs in the vector xuserctx->x
  */
  ierr = VecResetArray(userctx->x);CHKERRQ(ierr);
  ierr = VecResetArray(userctx->b);CHKERRQ(ierr);

  return 0;
}

/* ------------------------------------------------------------------------*/
#undef __FUNCT__
#define __FUNCT__ "UserFinalizeLinearSolve"
PetscErrorCode UserFinalizeLinearSolver(UserCtx *userctx)
{
  PetscErrorCode ierr;
  /*
     We are all done and don't need to solve any more linear systems, so
     we free the work space.  All PETSc objects should be destroyed when
     they are no longer needed.
  */
  ierr = KSPDestroy(&userctx->ksp);CHKERRQ(ierr);
  ierr = VecDestroy(&userctx->x);CHKERRQ(ierr);
  ierr = VecDestroy(&userctx->b);CHKERRQ(ierr);
  ierr = MatDestroy(&userctx->A);CHKERRQ(ierr);
  return 0;
}
