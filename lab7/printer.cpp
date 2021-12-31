#include <iostream>
#include "traversal.h"

int main(int argc, char **argv) {
	if(argc != 3) {
		std::cerr << "wrong input\n";
		return 1;
	}

	int size = atoi(argv[1]), offset = atoi(argv[2]);
	int *arr = new int[size];
	createLoop(arr, size, offset);
	for(int index = 0; index < size; index++)
		std::cout << arr[index] << '\n';
	delete[] arr;
	return 0;
}
