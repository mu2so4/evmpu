#!/bin/bash
g++ -std=c++11 main.cpp mtrx.h mtrx.cpp direct.cpp -o prog-direct
g++ -std=c++11 main.cpp mtrx.h mtrx.cpp imm.cpp -msse -o prog-imm
g++ -std=c++11 main.cpp mtrx.h mtrx.cpp blas.cpp -I $HOME/Linux_P4SSE2/include -L $HOME/Linux_P4SSE2/lib -lcblas -latlas -o prog-blas
