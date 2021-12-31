<<<<<<< HEAD
#/bin/bash

echo "compiling programs..."
make >/dev/null
if [[ $? -ne 0 ]]; then
	exit
fi
echo "programs compiled"


echo "prog0" | tee report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0 ; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog0 >/dev/null
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog1" | tee -a report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog1 >/dev/null
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog2" | tee -a report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog2 >/dev/null
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog3" | tee -a report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog3 >/dev/null
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt

echo "prog4" | tee -a report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog4 >/dev/null
	if [[ $? -ne 0 ]]; then
		exit
	fi
done

echo "all done!"
=======
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
>>>>>>> lab4/master
