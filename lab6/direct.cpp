#include "traversal.h"

int *createLoop(int size) {
    int *arr = new int[size];
    for(int index = 0; index < size - 1; index++)
        arr[index] = index + 1;
    return arr;
}
