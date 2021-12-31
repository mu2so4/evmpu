#include "traversal.h"

int *createLoop(int size) {
    int *arr = new int[size];
    arr[0] = size - 1;
    for(int index = 2; index < size; index++)
        arr[index] = index - 1;
    return arr;
}
