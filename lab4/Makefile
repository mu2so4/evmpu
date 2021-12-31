CC=g++
<<<<<<< HEAD

all: prog0 prog1 prog2 prog3 prog4

prog0: prog0.s
	$(CC) prog0.s -o prog0

prog1: prog1.s
	$(CC) prog1.s -o prog1

prog2: prog2.s
	$(CC) prog2.s -o prog2

prog3: prog3.s
	$(CC) prog3.s -o prog3

prog4: prog4.s
	$(CC) prog4.s -o prog4
=======
CFLAGS=-std=c++11 -Wall

all: usb opencv

opencv: negative initial

usb: usb.cpp
	$(CC) $(CFLAGS) -o usb -I/usr/include/libusb-1.0 usb.cpp -lusb-1.0

negative: main.o negative.o
	$(CC) main.o negative.o -o negative -lopencv_core -lopencv_highgui

initial: main.o initial.o
	$(CC) main.o initial.o -o initial -lopencv_core -lopencv_highgui

main.o: main.cpp
	$(CC) -c $(CFLAGS) main.cpp -o main.o

negative.o: negative.cpp
	$(CC) -c $(CFLAGS) negative.cpp -o negative.o

initial.o: initial.cpp
	$(CC) -c $(CFLAGS) initial.cpp -o initial.o
>>>>>>> lab4/master
