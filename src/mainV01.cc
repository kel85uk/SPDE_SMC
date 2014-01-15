/** Version 0.1 : Rudimentary solver */
static char help[] = "Solves a variable Poisson problem with KSP in FVM (TODO: EnKF).\n\n";

/*T
   Concepts: KSP^basic sequential example
   Concepts: KSP^Laplacian, 2d
   Concepts: Laplacian, 2d
   Processors: 1
T*/

/*
  Include "petscksp.h" so that we can use KSP solvers.  Note that this file
  automatically includes:
     petscsys.h       - base PETSc routines   petscvec.h - vectors
     petscmat.h - matrices
     petscis.h     - index sets            petscksp.h - Krylov subspace methods
     petscviewer.h - viewers               petscpc.h  - preconditioners
*/
#include <Array.hh>
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
  PetscScalar hx2,hy2;   /* 1/(m+1)*(m+1) and 1/(n+1)*(n+1) */
} UserCtx;

extern PetscErrorCode UserInitializeLinearSolver(PetscInt,PetscInt,UserCtx*);
extern PetscErrorCode UserFinalizeLinearSolver(UserCtx*);
extern PetscErrorCode UserDoLinearSolver(PetscScalar*,UserCtx *userctx,PetscScalar *b,PetscScalar *x);

#undef __FUNCT__
#define __FUNCT__ "main"
int main(int argc,char **args)
{
  UserCtx        userctx;
  PetscErrorCode ierr;
  PetscInt       m = 6,n = 7,t,tmax = 2,i,Ii,II,j,J,JJ,N,N2;
  PetscScalar    hx,hy,x,y,xr,yr,radius;
  PetscScalar		 *userx,*rho,*userb,*X,*Y;
  PetscScalar		 UN,UE,US,UW = 0.;
  PetscReal      enorm;
  Vec 						 rhov,solvec,fvec,Xvec,Yvec;

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
//  ierr = PetscMalloc(N*sizeof(PetscScalar),&rho);CHKERRQ(ierr);

  /*
     Fill up the array rho[] with the function rho(x,y) = x; fill the
     right-hand-side b[] and the solution with a known problem for testing.
  */
  ierr = PetscMalloc(N*sizeof(PetscScalar),&X);CHKERRQ(ierr);
  ierr = PetscMalloc(N*sizeof(PetscScalar),&Y);CHKERRQ(ierr);
	Array					 rho1(N2);
	Array					 rho2(N);
  ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok\n");CHKERRQ(ierr);
  hx = 1.0/m;
  hy = 1.0/n;

	/* Set rho array first */
  yr = -hy/2;
  for (j=0; j<=n+1; ++j) {
    xr = -hx/2;
    for (i=0; i<=m+1; ++i) {
      II = i + (m+2)*j;
      radius = std::sqrt((xr - 0.5)*(xr - 0.5) + (yr - 0.5)*(yr - 0.5));
      if(radius <= 0.2){
      		rho1(II) = (1e-3 - 1.0)*radius/0.2 + 1;	//PetscSinScalar(2.*PETSC_PI*xr)*PetscSinScalar(2.*PETSC_PI*yr);
    		}
			else{
				rho1(II) = 1e-3;
			}
			xr += hx;
    }
    yr += hy;
  }
  	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 10\n");CHKERRQ(ierr);
  /* Now set the rest of the arrays, userb */
  std::cout << hx << ":" << hy << std::endl;
  y	 = hy/2;
  for (j = 0; j < n; ++j) {
    x = hx/2;
    for (i = 0; i < m; ++i) {
    		Ii = (i) + m*(j);
    		II = (i+1) + (m+2)*(j+1);
    		radius = std::sqrt((x - 0.5)*(x - 0.5) + (y - 0.5)*(y - 0.5));
    		if(radius <= 0.2)
      		userb[Ii]		= -9.81*radius/0.2; //-2*PETSC_PI*PetscCosScalar(2*PETSC_PI *x)*PetscSinScalar(2*PETSC_PI*y) + 8*PETSC_PI*PETSC_PI*x*PetscSinScalar(2*PETSC_PI *x)*PetscSinScalar(2*PETSC_PI*y); //-398600.4418/((x - 0.5)*(x - 0.5) + (y - 0.5)*(y - 0.5)); //
      	else
      		userb[Ii]		=	-9.81*0.2/(radius);
      rho2(Ii) = rho1(II);
      if (i == 0){
				J = II - 1;
      		userb[Ii] += (0.5)*(rho1(II) + rho1(J))*UW*2/(hx*hx);
    		}
    		else if (i == (m-1)){
    			J = II + 1;
    			userb[Ii] += (0.5)*(rho1(II) + rho1(J))*UE*2/(hx*hx);
    		}
    		else if (j == 0){
    			J = II - (m+2);
    			userb[Ii] += (0.5)*(rho1(II) + rho1(J))*US*2/(hy*hy);
    		}
    		else if (j == (n-1)){
    			J = II + (m+2);
    			userb[Ii] += (0.5)*(rho1(II) + rho1(J))*UN*2/(hy*hy);
  			}
      X[Ii] = x;
      Y[Ii] = y;
      x += hx;
    }
    y += hy;
  }  
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 1\n");CHKERRQ(ierr);
  /*
     Loop over a bunch of timesteps, setting up and solver the linear
     system for each time-step.

     Note this is somewhat artificial. It is intended to demonstrate how
     one may reuse the linear solver stuff in each time-step.
  */
//  for (t=0; t<tmax; t++) {
		rho = rho1.petscME();
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 2\n");CHKERRQ(ierr);		
    ierr =  UserDoLinearSolver(rho,&userctx,userb,userx);CHKERRQ(ierr);
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 3\n");CHKERRQ(ierr);
//  }

	VecCreate(PETSC_COMM_WORLD,&rhov);
	VecSetSizes(rhov,PETSC_DECIDE,N);
	VecSetType(rhov,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&Xvec);
	VecSetSizes(Xvec,PETSC_DECIDE,N);
	VecSetType(Xvec,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&Yvec);
	VecSetSizes(Yvec,PETSC_DECIDE,N);
	VecSetType(Yvec,VECSEQ);
	VecCreate(PETSC_COMM_WORLD,&solvec);
	VecSetSizes(solvec,PETSC_DECIDE,N);
	VecSetType(solvec,VECSEQ);	
	VecCreate(PETSC_COMM_WORLD,&fvec);
	VecSetSizes(fvec,PETSC_DECIDE,N);
	VecSetType(fvec,VECSEQ);			
	for (i = 0;i < N;++i){
		VecSetValues(rhov,1,&i,&rho2(i),INSERT_VALUES);
		VecSetValues(Xvec,1,&i,&X[i],INSERT_VALUES);
		VecSetValues(Yvec,1,&i,&Y[i],INSERT_VALUES);
		VecSetValues(solvec,1,&i,&userx[i],INSERT_VALUES);
		VecSetValues(fvec,1,&i,&userb[i],INSERT_VALUES);		
	}
	PetscViewer rhoview,solview,fview,Xview,Yview;
	PetscViewerCreate(PETSC_COMM_WORLD,&rhoview);
	PetscViewerSetType(rhoview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"rho.dat",&rhoview);
	PetscViewerCreate(PETSC_COMM_WORLD,&Xview);
	PetscViewerSetType(Xview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"X.dat",&Xview);
	PetscViewerCreate(PETSC_COMM_WORLD,&Yview);
	PetscViewerSetType(Yview,PETSCVIEWERASCII);	
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"Y.dat",&Yview);
	PetscViewerCreate(PETSC_COMM_WORLD,&solview);
	PetscViewerSetType(solview,PETSCVIEWERASCII);
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"sol.dat",&solview);
	PetscViewerCreate(PETSC_COMM_WORLD,&fview);
	PetscViewerSetType(fview,PETSCVIEWERASCII);	
	PetscViewerASCIIOpen(PETSC_COMM_WORLD,"f.dat",&fview);			
	VecView(rhov,rhoview);
	VecView(Xvec,Xview);
	VecView(Yvec,Yview);
	VecView(solvec,solview);
	VecView(fvec,fview);	
//	VecDestroy(&rhov);
  /*
     We are all finished solving linear systems, so we clean up the
     data structures.
  */
//  ierr = PetscFree(rho);CHKERRQ(ierr);
//  ierr = PetscFree(solution);CHKERRQ(ierr);
  ierr = PetscFree(userx);CHKERRQ(ierr);
  ierr = PetscFree(userb);CHKERRQ(ierr);
//  ierr = PetscFree(rho1.petscME());CHKERRQ(ierr);
  ierr = UserFinalizeLinearSolver(&userctx);CHKERRQ(ierr);
  ierr = PetscFinalize();
	
  return 0;
}

/* ------------------------------------------------------------------------*/
#undef __FUNCT__
#define __FUNCT__ "UserInitializedLinearSolve"
PetscErrorCode UserInitializeLinearSolver(PetscInt m,PetscInt n,UserCtx *userctx)
{
  PetscErrorCode ierr;
  PetscInt       N;
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 4\n");CHKERRQ(ierr);
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
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 5\n");CHKERRQ(ierr);
  /*
     Create vectors. Here we create vectors with no memory allocated.
     This way, we can use the data structures already in the program
     by using VecPlaceArray() subroutine at a later stage.
  */
  ierr = VecCreateSeqWithArray(PETSC_COMM_SELF,1,N,NULL,&userctx->b);CHKERRQ(ierr);
  ierr = VecDuplicate(userctx->b,&userctx->x);CHKERRQ(ierr);
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 6\n");CHKERRQ(ierr);
  /*
     Create linear solver context. This will be used repeatedly for all
     the linear solves needed.
  */
  ierr = KSPCreate(PETSC_COMM_SELF,&userctx->ksp);CHKERRQ(ierr);
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 7\n");CHKERRQ(ierr);
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
PetscErrorCode UserDoLinearSolver(PetscScalar *rho,UserCtx *userctx,PetscScalar *userb,PetscScalar *userx)
{
  PetscErrorCode ierr;
  PetscInt       i,j,Ii,II,J,JJ,m = userctx->m,n = userctx->n;
  Mat            A = userctx->A;
  PC             pc;
  PetscScalar    vD,hx2 = userctx->hx2,hy2 = userctx->hy2,vN,vS,vE,vW;
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 8\n");CHKERRQ(ierr);
  /*
     This is not the most efficient way of generating the matrix
     but let's not worry about it. We should have separate code for
     the four corners, each edge and then the interior. Then we won't
     have the slow if-tests inside the loop.

     Computes the operator
             -div rho grad
     on an m by n grid with zero Dirichlet boundary conditions. The rho
     is assumed to be given on the same grid as the finite difference
     stencil is applied.  For a staggered grid, one would have to change
     things slightly.
  */
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
	ierr   = PetscPrintf(PETSC_COMM_WORLD,"All ok 9\n");CHKERRQ(ierr);
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
