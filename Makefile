CC=g++

all: usb

usb: usb.cpp
	$(CC) usb.cpp -o usb
