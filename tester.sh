#/bin/bash

make >/dev/null

if [[ $? -ne 0 ]]; then
	exit
fi


echo "prog0" > report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0 ; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog0
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog1" >>report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog1
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog2" >>report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog2
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
echo -e "\n" >>report.txt


echo "prog2" >>report.txt
echo -e "#\treal\tuser\tsys" >>report.txt
for (( i = 0; i < 6 ; i++ ))
do
	\time -o report.txt -a -f "$i\t%e\t%U\t%S" ./prog3
	if [[ $? -ne 0 ]]; then
		exit
	fi
done
