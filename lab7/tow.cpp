#include "traversal.h"

void createLoop(int *arr, int size, int offset) {
	if(offset >= size) {
		arr[size - 1] = 0;
		for(int index = 0; index < size - 1; index++)
			arr[index] = index + 1;
		return;
	}

	for(int index = 0; index < size - offset; index++)
		arr[index] = index + offset;

	for(int index = 0; index < offset; index++)
		arr[size - offset + index] = index;

}
