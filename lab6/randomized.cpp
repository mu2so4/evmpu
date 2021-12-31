#include "traversal.h"
#include <algorithm>

int *createLoop(int size) {
    int *arr = new int[size];
    int *order = new int[size];
    for(int index = 0; index < size - 1; index++)
        order[index] = index + 1;
    std::random_shuffle(order, order + size - 1);

    int pos = 0;
    for(int index = 0; index < size; index++) {
        arr[pos] = order[index];
        pos = arr[pos];
    }

    delete[] order;
    return arr;
}