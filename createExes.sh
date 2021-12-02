#!/bin/bash
g++ main.cpp -O0 -o exe0
g++ main.cpp -O1 -o exe1
g++ main.cpp -O2 -o exe2
g++ main.cpp -O3 -o exe3
g++ main.cpp -Os -o exes
g++ main.cpp -Ofast -o exefast
g++ main.cpp -Og -o exeg