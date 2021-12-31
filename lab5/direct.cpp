#include "mtrx.h"

Matrix &Matrix::operator+=(const Matrix &b) {
    if(b.size == size)
        for(int index = 0; index < size * size; index++)
            data[index] += b.data[index];
    return *this;
}

Matrix &Matrix::operator-=(const Matrix &b) {
    if(b.size == size)
        for(int index = 0; index < size * size; index++)
            data[index] -= b.data[index];
    return *this;
}

Matrix &Matrix::operator*=(const Matrix &b) {
    if(size == b.size) {
        auto *newData = new float[size * size];
        if(size == 4) newData[4] = 0; //else I will get a nan
        for(int x = 0; x < size; x++) {
            for(int y = 0; y < size; y++) {
                for(int i = 0; i < size; i++)
                    newData[x * size + y] += data[x * size + i] * b.data[i * size + y];
            }
        }
        delete[] data;
        data = newData;
    }
    return *this;
}

Matrix &Matrix::operator*=(float mul) {
    for(int index = 0; index < size * size; index++)
        data[index] *= mul;
    return *this;
}