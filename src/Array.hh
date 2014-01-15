#ifndef ARRAY_HH
#define ARRAY_HH

#include <new>
#include <petsc.h>
#include <string.h>
#include <algorithm>
#include <iostream>
#include <Types.hh>
#include <cmath>
#include <time.h>
#include <cstdlib>
#include <Debug.hh>


//*******************************************************************************************************************
/*!  Array class for 1,2 and 3 dimensions
*
*    - all elements should be stored in a contiguous chunk of memory ( no vector<vector> ! )
*/
//*******************************************************************************************************************
class Array
{
public:
   // Constructors for 1D,2D and 3D
   Array();
   Array( int xSize );
   Array( int xSize, int ySize );
   Array( int xSize, int ySize, int zSize );


   // Depending on your implementation you might need the following:
   ~Array();
	 Array(const Array& s);
   //Array& operator= (const Array& s);


   // Access Operators for 1D, 2D and 3D
   inline PetscScalar & operator () ( int i );
   inline PetscScalar & operator () ( int i ,int j );
   inline PetscScalar & operator () ( int i, int j, int k );
   
   // for const Arrays the following access operators are required
   inline const PetscScalar & operator () ( int i ) const;
   inline const PetscScalar & operator () ( int i ,int j ) const;
   inline const PetscScalar & operator () ( int i, int j, int k ) const;   
   
   //Arithmetic Operators for arrays
   Array& operator= (const Array &rhs);
   Array& operator+= (const Array &rhs);
   Array& operator-= (const Array &rhs);   
   Array& operator*= (const Array &rhs);
	 bool operator == (const Array &rhs);
	 bool operator != (const Array &rhs);	 
   const Array operator+ (const Array &other) const;
   const Array operator- (const Array &other) const;
   const Array operator* (const Array &other) const;      


	 //Convenient functions
   // initialize the whole array with a constant value
   void fill( PetscScalar value );
   
   void randfill(PetscScalar maxval, PetscScalar minval);

	 void eye(); //Create Identity matrix
   
	 void diag(int dia,Array& s,int mode); //Modify the diagonals of a 2D array (same as Matlab) [Mode 1 = vector copied to array, Mode 0 = diagonal(k) of the array is extracted to a vector]
	 
	 PetscScalar dot(Array& Y); //Dot product of array with another array
	 PetscScalar sum();
	 PetscScalar amax();
	 PetscScalar mean();
	 PetscScalar var();
	 PetscScalar sumI(int offset); // Currently only for 1,2-D
	 Array col(int Ncol);
	 void col(int Ncol, Array &vec);
	 Array row(int Nrow);
	 void row(int Nrow, Array &vec);
	 
	 void kron(Array& X, Array& Y); //Kronecker product
	 
	 PetscScalar norm(std::string &s); // Norm of 1D array (vector) (1, 2 or inf)
	 
	 Array normalize(); // Normalize vector
	 
 	 Array transpose(); //Transpose matrix
	 
	 PetscScalar* petscME(); // Vomits arr to any petsc application
	 PetscScalar* petscME(int n); // Vomits arr to any petsc application
	 int getDimen() const; //Obtain dimensions of the array (1d, 2d, or 3d)

   // return total size of the array
   int getSize() const;

   // return xSize for dimension==0, ySize for dimension==1 and zSize for dimension==2
   // other dimension values are not allowed
   int getSize(int dimension ) const;


   // Print the whole array ( for debugging purposes )
   void print();
   void print2(); //Actual look of the array as indexed by the machine

private:
	PetscScalar *arr;
	int dim;
	int length_all;
	int length_x;
	int length_y;
	int length_z;
	int length_t;
	int i_next;
};


//===================================================================================================================
//
//  Inline Access Operators and Sizes
//
//===================================================================================================================


// Operator() 1D
inline PetscScalar& Array::operator ()(int i)
{
	int index = i;
	return *(arr + index);
}

// Operator() 2D
inline PetscScalar& Array::operator ()(int i,int j)
{
	int index = i + length_x*j;
	return *(arr + index);
}

// Operator() 3D
inline PetscScalar& Array::operator ()(int i, int j, int k)
{
	int index = i + j*length_x + k*length_x*length_y;
	return *(arr + index);
}

inline const PetscScalar & Array::operator () ( int i ) const
{
	int index = i;
	return *(arr+index);
}
inline const PetscScalar & Array::operator () ( int i ,int j ) const
{
	int index = i + length_x*j;
	return *(arr+index);
}
inline const PetscScalar & Array::operator () ( int i, int j, int k ) const
{
	int index = i + j*length_x + k*length_x*length_y;
	return *(arr+index);
}


#endif //ARRAY_HH

