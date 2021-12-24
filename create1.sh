#!/bin/bash
echo "Hello!"
g++ main.cpp transform.h linear.cpp /usr/lib/x86_64-linux-gnu/libopencv_core.a /usr/lib/x86_64-linux-gnu/libopencv_highgui.a -o prog-linear
#g++ -o prog opencv.cpp -L/usr/lib/x86_64-linux-gnu/ –lopencv_core –lopencv_highgui
