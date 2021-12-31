#!/bin/bash

echo -e "offset test\n"
echo "making the program"
make
if [[ $? -ne 0 ]]; then
	exit
fi
echo -e "the program is ready!\n"

i=6
offset=$(( 1 << i >> 2 ))
size=$(( offset << 3 ))
echo -e "#\tsize\toffset\t1try\t2try\t3try" >offset-report.txt
for (( ; i < 24; i++ ))
do
	echo -n -e "$i\t" | tee -a offset-report.txt
	./associativity $size $offset 100 >>offset-report.txt
    if [[ $? -ne 0 ]];
        then echo "out of memory with size $size ints"
        exit
    fi
	offset=$(( offset << 1 ))
    size=$(( size << 1 ))
done

echo -e "\nall done!"
