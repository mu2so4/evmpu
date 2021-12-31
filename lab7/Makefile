CC=g++
CFLAGS=-O1 -c -Wall

all: associativity

associativity: tow.o main.o mtrx.o
	$(CC) main.o mtrx.o tow.o -o associativity

printArr: print.o tow.o
	$(CC) print.o tow.o -o printArr

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp -o main.o

mtrx.o: mtrx.cpp
	$(CC) $(CFLAGS) mtrx.cpp -o mtrx.o

tow.o: tow.cpp
	$(CC) $(CFLAGS) tow.cpp -o tow.o

print.o: printer.cpp
	$(CC) $(CFLAGS) printer.cpp -o print.o

clean:
	rm -rf *.o
