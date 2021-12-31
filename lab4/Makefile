CC=g++
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
