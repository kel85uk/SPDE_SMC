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
typedef struct UserCtx {
  Vec         x,b;       /* solution vector, right-hand-side vector */
  Mat         A;          /* sparse matrix */
  KSP         ksp;       /* linear solver context */
  PetscInt    m,n;       /* grid dimensions */
  PetscScalar hx2,hy2;
  PetscScalar	UN,US,UE,UW;
} UserCtx;

extern PetscErrorCode UserInitializeLinearSolver(PetscInt,PetscInt,UserCtx&);
extern PetscErrorCode UserFinalizeLinearSolver(UserCtx*);
extern PetscErrorCode UserDoLinearSolver(PetscScalar*,UserCtx &userctx,PetscScalar *b,PetscScalar *x,KSPConvergedReason *reason);
PetscScalar	rho_calculate(PetscScalar,PetscScalar,PetscScalar);
void set_b_vector(PetscInt, PetscInt, PetscScalar, PetscInt, UserCtx, Array, Array, PetscScalar* , Array &, PetscScalar* &);

void set_b_vector(PetscInt m, PetscInt n, PetscScalar RE, PetscInt NT, UserCtx userctx, Array X, Array Y, PetscScalar *rho, Array &rho2, PetscScalar* &userb){
	PetscInt i,j, Ii, II, J;
	PetscScalar x, y, radius, hx2, hy2;
	PetscScalar UN,US,UW,UE;
	UN		= userctx.UN;
	US		= userctx.US;
	UE		= userctx.UE;
	UW		= userctx.UW;
	hx2	= userctx.hx2;
	hy2	= userctx.hy2;
	for (j = 0; j < n; ++j) {
		for (i = 0; i < m; ++i) {
				Ii		=	(i) + m*(j); // Counter for internal cells
				II		=	(i+1) + (m+2)*(j+1); // Counter for cells with ghosts
				x		=	X(Ii);
				y		=	Y(Ii);
				radius = std::sqrt((x - 0.5)*(x - 0.5) + (y - 0.5)*(y - 0.5));
				if(radius <= RE)
					userb[Ii]		= -9.81*radius/RE;
				else
					userb[Ii]		=	-9.81*RE/(radius);
			rho2(Ii,NT) = rho[II];
			if (i == 0){
				J = II - 1;
					userb[Ii] += (0.5)*(rho[II] + rho[J])*UW*2/hx2;
				}
				else if (i == (m-1)){
					J = II + 1;
					userb[Ii] += (0.5)*(rho[II] + rho[J])*UE*2/hx2;
				}
				else if (j == 0){
					J = II - (m+2);
					userb[Ii] += (0.5)*(rho[II] + rho[J])*US*2/hy2;
				}
				else if (j == (n-1)){
					J = II + (m+2);
					userb[Ii] += (0.5)*(rho[II] + rho[J])*UN*2/hy2;
				}
		}
	}
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
PetscErrorCode UserInitializeLinearSolver(PetscInt m,PetscInt n,UserCtx &userctx)
{
  PetscErrorCode ierr;
  PetscInt       N;
  /*
     Here we assume use of a grid of size m x n, with all points on the
     interior of the domain, i.e., we do not include the points corresponding
     to homogeneous Dirichlet boundary conditions.  We assume that the domain
     is [0,1]x[0,1].
  */
  userctx.m   = m;
  userctx.n   = n;
  N            = m*n;

  /*
     Create the sparse matrix. Preallocate 5 nonzeros per row.
  */
  ierr = MatCreateSeqAIJ(PETSC_COMM_SELF,N,N,5,0,&userctx.A);CHKERRQ(ierr);
  /*
     Create vectors. Here we create vectors with no memory allocated.
     This way, we can use the data structures already in the program
     by using VecPlaceArray() subroutine at a later stage.
  */
  ierr = VecCreateSeqWithArray(PETSC_COMM_SELF,1,N,NULL,&userctx.b);CHKERRQ(ierr);
  ierr = VecDuplicate(userctx.b,&userctx.x);CHKERRQ(ierr);
  /*
     Create linear solver context. This will be used repeatedly for all
     the linear solves needed.
  */
  ierr = KSPCreate(PETSC_COMM_SELF,&userctx.ksp);CHKERRQ(ierr);
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
PetscErrorCode UserDoLinearSolver(PetscScalar *rho,UserCtx &userctx,PetscScalar *userb,PetscScalar *userx, KSPConvergedReason *reason)
{
  PetscErrorCode ierr;
  PetscInt       i,j,Ii,II,J,JJ,m = userctx.m,n = userctx.n;
  Mat            A = userctx.A;
  PC             pc;
  PetscScalar    vD,hx2 = userctx.hx2,hy2 = userctx.hy2,vN,vS,vE,vW;

  for (j = 0; j < n; ++j) {
    for (i = 0; i < m; ++i) {
    		Ii = i + m*j;
    		II = (i + 1) + (m+2)*(j + 1);
    		vS = 0.; vN = 0.; vW = 0.; vE = 0.; vD = 0.;
      if (j>0) {
				JJ			=	II - (m+2);
				J			= Ii - m;
				vS			= -.5*(rho[II] + rho[JJ])/hy2;
        ierr		= MatSetValues(A,1,&Ii,1,&J,&vS,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (j<n-1) {
        JJ			=	II + (m+2);
        J			=	Ii + m;
        vN			=	-.5*(rho[II] + rho[JJ])/hy2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vN,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (i>0) {
        JJ			=	II - 1;
        J			=	Ii - 1;
        vW			=	-.5*(rho[II] + rho[JJ])/hx2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vW,INSERT_VALUES);CHKERRQ(ierr);
      }
      if (i<m-1) {
        JJ			=	II + 1;
        J			=	Ii + 1;
        vE			=	-.5*(rho[II] + rho[JJ])/hx2;
        ierr		=	MatSetValues(A,1,&Ii,1,&J,&vE,INSERT_VALUES);CHKERRQ(ierr);
      }
    		JJ			=	II - (m+2);
    		vS			= 0.5*(rho[II] + rho[JJ])/hy2;
    		JJ			=	II + (m+2);
    		vN			=	0.5*(rho[II] + rho[JJ])/hy2;
    		JJ			=	II - 1;
    		vW			=	0.5*(rho[II] + rho[JJ])/hx2;
    		JJ			=	II + 1;
    		vE			=	0.5*(rho[II] + rho[JJ])/hx2;
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
  ierr = KSPSetOperators(userctx.ksp,A,A,SAME_NONZERO_PATTERN);CHKERRQ(ierr);

  /*
     Set linear solver defaults for this problem (optional).
     - Here we set it to use direct LU factorization for the solution
  */
  ierr = KSPGetPC(userctx.ksp,&pc);CHKERRQ(ierr);
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
  ierr = KSPSetFromOptions(userctx.ksp);CHKERRQ(ierr);

  /*
     This allows the PETSc linear solvers to compute the solution
     directly in the user's array rather than in the PETSc vector.

     This is essentially a hack and not highly recommend unless you
     are quite comfortable with using PETSc. In general, users should
     write their entire application using PETSc vectors rather than
     arrays.
  */
  ierr = VecPlaceArray(userctx.x,userx);CHKERRQ(ierr);
  ierr = VecPlaceArray(userctx.b,userb);CHKERRQ(ierr);

  /* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                      Solve the linear system
     - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

  ierr = KSPSolve(userctx.ksp,userctx.b,userctx.x);CHKERRQ(ierr);
	ierr		=	KSPGetConvergedReason(userctx.ksp,reason);CHKERRQ(ierr);
  /*
    Put back the PETSc array that belongs in the vector xuserctx->x
  */
  ierr = VecResetArray(userctx.x);CHKERRQ(ierr);
  ierr = VecResetArray(userctx.b);CHKERRQ(ierr);

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
