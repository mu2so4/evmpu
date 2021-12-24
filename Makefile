CC=g++

all: usb

usb: usb.cpp
	$(CC) -o usb -I/usr/include/libusb-1.0 usb.cpp -lusb-1.0
