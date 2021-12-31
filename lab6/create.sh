#!/bin/bash
g++ -O1 -std=c++11 main.cpp mtrx.h mtrx.cpp traversal.h direct.cpp -o prog-direct
g++ -O1 -std=c++11 main.cpp mtrx.h mtrx.cpp traversal.h reversed.cpp -o prog-reversed
g++ -O1 -std=c++11 main.cpp mtrx.h mtrx.cpp traversal.h randomized.cpp -o prog-random
