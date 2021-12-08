CC=g++

all: prog0 prog1 prog2

prog0: prog0.s
	$(CC) prog0.s -o prog0

prog1: prog1.s
	$(CC) prog1.s -o prog1

prog2: prog2.s
	$(CC) prog2.s -o prog2
