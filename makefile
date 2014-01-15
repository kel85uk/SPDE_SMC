ALL: test
CFLAGS = -std=c++11 -O3 -I${PETSC_DIR}/include -I./src
FFLAGS = -I${PETSC_DIR}/include/finclude
SOURCESC = ./src/mainV05.cc ./src/Array.cc ./src/Debug.cc
SOURCESF =
OBJ = $(SOURCESC:.cc=.o)
CLEANFILES = ${OBJ} testv05
include ${PETSC_DIR}/conf/variables
include ${PETSC_DIR}/conf/rules
test: ${OBJ} chkopts 
			-${CLINKER} -o testv05 ${OBJ} ${PETSC_SYS_LIB}
