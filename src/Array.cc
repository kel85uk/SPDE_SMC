#include "Array.hh"



//===================================================================================================================
//
//  Constructors
//
//===================================================================================================================
Array::Array()
{
	length_x = 1;
	length_t = length_x;
	arr = new PetscScalar[length_t];
	for (int i = 0; i < length_t; ++i){
		arr[i] = 0;
	}	
	i_next = 0;
	dim = 1;	
}

Array::Array( int xSize )
{
	length_x = xSize;
	length_t = length_x;
	arr = new PetscScalar[length_t];
	for (int i = 0; i < length_t; ++i){
		arr[i] = 0;
	}	
	i_next = 0;
	dim = 1;
}

Array::Array( int xSize, int ySize )
{
	length_x = xSize;
	length_y = ySize;
	length_t = length_x*length_y;
	arr = new PetscScalar[length_t];
	for (int i = 0; i < length_t; ++i){
		arr[i] = 0;
	}	
	i_next = 0;
	dim = 2;
}

Array::Array( int xSize, int ySize, int zSize )
{
	length_x = xSize;
	length_y = ySize;
	length_z = zSize;
	length_t = length_x*length_y*length_z;
	arr = new PetscScalar[length_t];
	for (int i = 0; i < length_t; ++i){
		arr[i] = 0;
	}	
	i_next = 0;
	dim = 3;
}

Array::Array(const Array& s)
{
	length_t = s.getSize();
	arr = new PetscScalar[length_t];
	memcpy(arr, s.arr, sizeof(PetscScalar) * length_t);
	dim = s.getDimen();
	length_x = s.getSize(0);
	length_y = s.getSize(1);
	length_z = s.getSize(2);
}

Array::~Array()
{
	delete [] arr;
}

// Arithmetic Operators
Array& Array::operator = (const Array &rhs)
{
	if(this != &rhs)
	{
		dim = rhs.getDimen();
		length_x = rhs.getSize(0);
		length_y = rhs.getSize(1);
		length_z = rhs.getSize(2);
		length_t = rhs.getSize();
		delete [] arr;
		arr = new PetscScalar[length_t];
		memcpy(arr, rhs.arr, sizeof(PetscScalar) * length_t);
	}
	return *this;
}

Array& Array::operator += (const Array &rhs)
{
		dim = rhs.getDimen();
		length_x = rhs.getSize(0);
		length_y = rhs.getSize(1);
		length_z = rhs.getSize(2);
		length_t = rhs.getSize();
		Array result(*this);
		for (int i = 0; i < length_t; ++i)
			result(i) = rhs(i) + result(i);
		delete [] arr;
		arr = new PetscScalar[length_t];
		memcpy(arr, result.arr, sizeof(PetscScalar) * length_t);
		return *this;
}

Array& Array::operator -= (const Array &rhs)
{
		dim = rhs.getDimen();
		length_x = rhs.getSize(0);
		length_y = rhs.getSize(1);
		length_z = rhs.getSize(2);
		length_t = rhs.getSize();
		Array result(*this);
		for (int i = 0; i < length_t; ++i)
			result(i) = result(i) - rhs(i);
		delete [] arr;
		arr = new PetscScalar[length_t];
		memcpy(arr, result.arr, sizeof(PetscScalar) * length_t);
		return *this;
}

Array& Array::operator *= (const Array &rhs)
{
		int index = 0;
		int nx2 = rhs.getSize(0);
		int ny2 = rhs.getSize(1);
		CHECK_MSG((length_y == nx2),"Matrix size multiplication is not permitted (ny1!=nx2)");
		Array result(length_x,ny2);
		result.fill(0.);
		for (int i=0; i < length_x; ++i){
			for (int j=0; j < ny2; ++j){
				for (int k=0; k < length_y; ++k){
				index = i + k*length_x;
				result(i,j) += arr[index] * rhs(k,j);
				}
			}
		}
		delete [] arr;
		length_x = length_x;
		length_y = ny2;
		length_t = result.getSize();
		arr = new PetscScalar[length_t];
		memcpy(arr, result.arr, sizeof(PetscScalar) * length_t);
		return *this;		
}

bool Array::operator == (const Array &rhs)
{
	if((dim!=rhs.getDimen())&&(length_x != rhs.getSize(0))&&(length_y != rhs.getSize(1))&&length_z != rhs.getSize(2))
		return false;
	for (int i=0; i < length_t; ++i)
		if(arr[i] != rhs(i)) return false;
	return true;
}

bool Array::operator != (const Array &rhs)
{
	return !(*this == rhs);
}

const Array Array::operator+ (const Array &other) const
{
	return Array(*this) += other;
}

const Array Array::operator- (const Array &other) const
{
	return Array(*this) -= other;
}

const Array Array::operator* (const Array &other) const
{
	CHECK_MSG(dim==2,"Original array is not a matrix!");
	CHECK_MSG((other.getDimen()==1)||(other.getDimen()==2),"Multiplied array is not a vector or matrix!");
	int nx2 = other.getSize(0);
	int ny2 = other.getSize(1);
	CHECK_MSG((length_y == nx2),"Matrix size multiplication is not permitted (ny1!=nx2)");
	Array final_result;
	if(other.getDimen() == 1){
		Array result(length_x);
		result.fill(0.);
		int index = 0;
		for (int i=0; i < length_x; ++i){
			for (int j=0; j < length_y; ++j){
				index = i + j*length_x;
				result(i) += arr[index] * other(j);
			}
		}
		final_result = result;
	}
	else if(other.getDimen() == 2){
		Array result(length_x,ny2);
		result.fill(0.);
		int index = 0;
		for (int i=0; i < length_x; ++i){
			for (int j=0; j < ny2; ++j){
				for (int k=0; k < length_y; ++k){
				index = i + k*length_x;
				result(i,j) += arr[index] * other(k,j);
				}
			}
		}
		final_result = result;
	}
	return final_result;
}


//===================================================================================================================
//
//  Convenience Functions
//
//===================================================================================================================


//initialize the whole array with a constant value
void Array::fill( PetscScalar value )
{
	std::fill(arr,arr + length_t, value);
}

void Array::randfill(PetscScalar maxval, PetscScalar minval)
{
//	std::srand(time(NULL));
	std::srand(1);
	PetscScalar rangeval = maxval - minval;
	for (int i = 0; i < length_t; ++i)
		arr[i] = minval + (rangeval * rand()) / (RAND_MAX + 1.0);
}

void Array::eye()
{
	int index = 0;
	CHECK (dim==2);
		for (int i = 0; i < length_x; ++i){
			index = i + i*length_x;
			arr[index] = 1;
		}
}

void Array::diag(int dia,Array& s,int mode)
{
	int index = 0;
	int col_offset = 0;
	int row_offset = 0;
	if (dia < 0)
	{
		row_offset = -dia;
	}
	else col_offset = dia;
	CHECK(dim == 2);
	CHECK(s.getDimen() == 1);
	int i,j = 0;
	if (mode == 1)
		for (int ii = 0; ii < s.getSize(); ++ii)
		{
			i = row_offset + ii;
			j = col_offset + ii;
			if ((i >= length_x)||(j >= length_y))
			{
				break;
			}
			index = i + j*length_x;
			arr[index] = s(ii);
		}
	else
		for (int ii = 0; ii < s.getSize(); ++ii)
		{
			i = row_offset + ii;
			j = col_offset + ii;
			if ((i >= length_x)||(j >= length_y))
			{
				break;
			}
			index = i + j*length_x;
			s(ii) = arr[index];
		}
}

// Calculate dot product of two 1D arrays (vectors)
PetscScalar Array::dot(Array& Y)
{
	Array X(*this);
	CHECK_MSG((X.getDimen() == 1) && (Y.getDimen() == 1),"One of the arrays are not 1D \n");
	CHECK_MSG((X.getSize() == Y.getSize()),"Vectors are of different sizes! \n");
	PetscScalar result_d = 0.;
	for (int i = 0; i < X.getSize(); ++i)
		result_d += X(i)*Y(i);
	return result_d;
}

PetscScalar Array::sum()
{
	Array X(*this);
	PetscScalar result_d = 0.;
	for (int i = 0; i < X.getSize(); ++i)
		result_d += X(i);
	return result_d;
}

PetscScalar Array::mean()
{
	Array X(*this);
	PetscScalar result_d = 0.;
	result_d = X.sum()/length_t;
	return result_d;
}

PetscScalar Array::var()
{
	Array X(*this);
	PetscScalar EX = X.mean();
	PetscScalar temp = 0.;
	for(int i = 0; i < length_t; i++) {
		temp += (X(i) - EX) * (X(i) - EX);
	}
	return temp/length_t;	
/*	PetscScalar EX2 = X.dot(X)/length_t;
	PetscScalar result_d = EX2 - EX*EX;
	return result_d; */
}

PetscScalar Array::amax()
{
	Array X(*this);
	PetscScalar result_d = X(0);
	for (int i = 1; i < X.getSize(); ++i)
		result_d = (result_d < X(i))? X(i):result_d;
	return result_d;
}

PetscScalar Array::sumI(int offset)
{
	Array X(*this);
	PetscScalar result_d = 0.;	
	if (dim == 1){
		for (int i = offset; i < X.getSize() - offset; ++i)
			result_d += X(i);
	}
	if (dim == 2){
		for (int i = offset; i < X.getSize(0) - offset; ++i)
			for (int j = offset; j < X.getSize(1) - offset; ++j)
				result_d += X(i,j);
	}
	return result_d;	
}

Array Array::col(int Ncol)
{
	CHECK(dim == 2);
	Array result(length_x);
	for (int i = 0; i < length_x; ++i)
		result(i) = arr[i + Ncol*length_x];
	return result;
}

void Array::col(int Ncol, Array &vec)
{
	CHECK(dim == 2);
	for (int i = 0; i < length_x; ++i)
		arr[i + Ncol*length_x] = vec(i);
}

Array Array::row(int Nrow)
{
	CHECK(dim == 2);
	Array result(length_y);
	for (int j = 0; j < length_y; ++j)
		result(j) = arr[Nrow + j*length_x];
	return result;
}

void Array::row(int Nrow, Array &vec)
{
	CHECK(dim == 2);
	for (int j = 0; j < length_y; ++j)
		arr[Nrow + j*length_x] = vec(j);
}

// Kronecker product of two matrices
void Array::kron(Array& X, Array& Y)
{
	int X_row = X.getSize(0);
	int X_col = X.getSize(1);
	int Y_row = Y.getSize(0);
	int Y_col = Y.getSize(1);
	int index, size1, size2 = 0;
	size1 = X_row*Y_row;
	size2 = X_col*Y_col;
	delete [] arr;
	length_x = size1;
	length_y = size2;
	length_t = size1*size2;
	dim = 2;
	arr = new PetscScalar[length_t];
	for (int i = 0; i < X_row; ++i)
		for (int j = 0; j < X_col; ++j)
			for (int k = 0; k < Y_row; ++k)
				for (int p = 0; p < Y_col; ++p){
					index = (k + i*Y_row) + (p+j*Y_col)*size1;
					arr[index] = X(i,j) * Y(k,p);
				}
}

PetscScalar Array::norm(std::string &s)
{
	CHECK(dim == 1);
	PetscScalar result = 0.;
	if(s == "1")
	{
		for (int i = 0; i < length_t; ++i)
			result += std::abs(arr[i]);
		return result;
	}
	else if (s == "2")
	{
		for (int i = 0; i < length_t; ++i)
			result += arr[i]*arr[i];
		return sqrt(result);
	}
	else if (s == "inf")
	{
		PetscScalar temp = 0.;
		for (int i = 0; i < length_t; ++i)
			temp = (temp > std::abs(arr[i]))? temp : std::abs(arr[i]);
		return temp;
	}
	else return 0.;
}

Array Array::normalize()
{
	CHECK_MSG(dim == 1,"Array is not 1D (vector)");
	Array result(*this);
	PetscScalar vec_length = 0.;
	std::string norm_val = "2";
	vec_length = result.norm(norm_val);
	for (int i = 0; i < length_t; ++i)
		result(i) = result(i)/vec_length;
	return result;
}

Array Array::transpose()
{
	CHECK(dim==2);
	Array temp(*this);
	Array result(temp.getSize(1),temp.getSize(0));
	for (int i = 0; i < length_x; ++i)
		for (int j = 0; j < length_y; ++j){
			result(j,i) = temp(i,j);
		}
	return result;
}

PetscScalar* Array::petscME(){
	return arr;
}

PetscScalar* Array::petscME(int n){
	CHECK(dim == 2);
	PetscScalar* result;
	PetscErrorCode		ierr;
	PetscInt N;
	N = length_x;
	ierr = PetscMalloc(N*sizeof(PetscScalar),&result);//CHKERRQ(ierr);
	for (int i = 0; i < length_x; ++i)
		result[i] = arr[i + n*length_x];
	return result;
}

// Print the whole array (for debugging purposes)
void Array::print()
{
  int index = 0;
  if (dim == 3){
		for (int k = 0; k < length_z; ++k){
			for (int j = length_y-1; j >= 0; --j){
				for (int i = 0; i < length_x; ++i){
					index = i + j*length_x + k*length_x*length_y;
					std::cout << arr[index] << "\t";
				}
				std::cout << "\n";
			}
			std::cout << "\n" << "\n";
		}
		std::cout << "\n";
	}
	else if(dim == 2){
				for (int j = length_y-1; j >= 0; --j){
					for (int i = 0; i < length_x; ++i){
						index = i + j*length_x;
						std::cout << arr[index] << "\t";
					}
					std::cout << "\n";
				}
				std::cout << "\n";
			}
	else {
				for (int i = 0; i < length_x; ++i){
					index = i;
					std::cout << arr[index] << "\t";
				}
				std::cout << "\n";
	}
	std::cout << std::endl;
}

void Array::print2() //Print matrix as for computation
{
  int index = 0;
	if(dim==2){
		for (int i = 0; i < length_x; ++i){
			for (int j = 0; j < length_y; ++j){
				index = i + j*length_x;
				std::cout << arr[index] << "\t";
			}
			std::cout << "\n";
		}
		std::cout << "\n";
	}
	else {
		for (int i = 0; i < length_x; ++i){
			index = i;
			std::cout << arr[index] << "\t";
		}
		std::cout << "\n";
	}
}

int Array::getSize( int dimension ) const
{
	int size;
	size = (dimension == 0)? length_x : (dimension == 1)? length_y : length_z;
	return size;
}

int Array::getDimen() const
{
	return dim;
}

//return total size of the array
int Array::getSize() const
{
   return length_t;
}
