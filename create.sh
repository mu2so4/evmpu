#!/bin/bash
echo "Hello!"
g++ main.cpp transform.h linear.cpp -o prog-linear -lopencv_core -lopencv_highgui
