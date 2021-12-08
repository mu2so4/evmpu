#/bin/bash

make >/dev/null

echo "making programs"
if [[ $? -ne 0 ]]; then
	exit
fi
echo "programs made"


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
