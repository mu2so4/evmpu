CC=g++
CFLAGS=-std=c++11 -Wall

all: usb linear

usb: usb.cpp
	$(CC) $(CFLAGS) -o usb -I/usr/include/libusb-1.0 usb.cpp -lusb-1.0

linear: main.o linear.o
	$(CC) $(CFLAGS) main.o linear.o -o linear
main.o: main.cpp
	$(CC) -c $(CFLAGS) main.cpp /usr/lib/x86_64-linux-gnu/libopencv_core.a /usr/lib/x86_64-linux-gnu/libopencv_highgui.a -o main.o

linear.o: linear.o
	$(CC) -c $(CFLAGS) linear.cpp /usr/lib/x86_64-linux-gnu/libopencv_core.a /usr/lib/x86_64-linux-gnu/libopencv_highgui.a -o linear.o
