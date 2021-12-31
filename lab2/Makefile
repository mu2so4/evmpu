CC=g++

all: asm0.s asm3.s

asm0.s: main.cpp
	$(CC) -O0 -S main.cpp -o asm0.s

asm3.s: main.cpp
	$(CC) -O3 -S main.cpp -o asm3.s
