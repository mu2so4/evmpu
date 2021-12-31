#!/bin/bash

echo "Direct test"

echo "part1"
for((size = 4096 ; size < 16385 ; size = $size + 256 )); do
	./prog-direct $size 100 | tee -a report-direct.txt >/dev/null
done

echo "part2"
for((size = 16384 ; size < 131073 ; size = $size + 1024 )); do
	./prog-direct $size 100 | tee -a report-direct.txt >/dev/null
done

echo "part3"
for((size = 131072 ; size < 2097152 ; size = $size + 8192 )); do
	./prog-direct $size 100 | tee -a report-direct.txt >/dev/null
done


echo "Reversed test"

echo "part1"
for((size = 4096 ; size < 16385 ; size = $size + 256 )); do
	./prog-reversed $size 100 | tee -a report-reversed.txt >/dev/null
done

echo "part2"
for((size = 16384 ; size < 131073 ; size = $size + 1024 )); do
	./prog-reversed $size 100 | tee -a report-reversed.txt >/dev/null
done

echo "part3"
for((size = 131072 ; size < 2097152 ; size = $size + 8192 )); do
	./prog-reversed $size 100 | tee -a report-reversed.txt >/dev/null
done


echo "Randomized test"

echo "part1"
for((size = 4096 ; size < 16385 ; size = $size + 256 )); do
	./prog-random $size 100 | tee -a report-randomized.txt >/dev/null
done

echo "part2"
for((size = 16384 ; size < 131073 ; size = $size + 1024 )); do
	./prog-random $size 100 | tee -a report-randomized.txt >/dev/null
done

echo "part3"
for((size = 131072 ; size < 2097152 ; size = $size + 8192 )); do
	./prog-random $size 100 | tee -a report-randomized.txt >/dev/null
done
