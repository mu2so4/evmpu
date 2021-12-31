#!/bin/bash

if [[ $# -ne 4 ]]; then
    echo "arguments count must be equal to 4"
    exit
fi

REPORT_FILE=$4
echo -e "main test\n"
echo "making the program"
make
if [[ $? -ne 0 ]]; then
	exit
fi
echo -e "the program is ready!\n"

offset=$(( 1 << $1 ))
echo -e "#\tsize\toffset\t1try\t2try\t3try" >$REPORT_FILE
for (( i = $2; i <= $3; i++ )) do
	echo "$i"
    echo -n -e "$i\t" >>$REPORT_FILE
	./associativity $(( offset * i )) $offset 100 >>$REPORT_FILE
	if [[ $? -ne 0 ]]; then
		echo "error on ($offset, $i)"
		exit
	fi
done

echo -e "\nall done!"
