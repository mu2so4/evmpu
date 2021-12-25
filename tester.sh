#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "count of arguments must be equal to 1" >2
	exit
fi

echo "making the programs"
make opencv
if [[ $# -ne 1 ]]; then
	echo "error: build failed" >2
	exit
fi
echo "programs are ready"

out="$1-report.txt"
echo -e "FPS\tsecs per one pic" >$out

"./$1" | tee -a $out
