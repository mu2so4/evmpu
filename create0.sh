#!/bin/bash
echo "Hello!"
g++ opencv.cpp /usr/lib/x86_64-linux-gnu/libopencv_core.a /usr/lib/x86_64-linux-gnu/libopencv_highgui.a -o open
#g++ -o prog opencv.cpp -L/usr/lib/x86_64-linux-gnu/ –lopencv_core –lopencv_highgui
