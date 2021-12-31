#!/bin/bash
echo "" >> report.txt


echo "Direct test" >> report.txt
echo "Direct test"
\time -o report.txt -a -f "test1.txt: %U\n" ./prog-direct test1.txt output.txt
echo "test1 done"

echo "Imm test" >> report.txt
echo "Imm test"
\time -o report.txt -a -f "test1.txt: %U\n" ./prog-imm test1.txt output.txt
echo "test1 done"
\time -o report.txt -a -f "test2.txt: %U\n" ./prog-imm test2.txt output.txt
echo "test2 done"
\time -o report.txt -a -f "test3.txt: %U\n" ./prog-imm test3.txt output.txt
echo "test3 done"

echo "Blas test" >> report.txt
echo "Blas test"
\time -o report.txt -a -f "test1.txt: %U\n" ./prog-blas test1.txt output.txt
echo "test1 done"
\time -o report.txt -a -f "test2.txt: %U\n" ./prog-blas test2.txt output.txt
echo "test2 done"
\time -o report.txt -a -f "test3.txt: %U\n" ./prog-blas test3.txt output.txt
echo "test3 done"
echo "Testing successfully passed!"