#ifndef VECTOR_MTRX_H
#define VECTOR_MTRX_H

#include <iostream>

class Matrix {
    int size;
    float *data;
public:
    explicit Matrix(int length);
    ~Matrix();
    Matrix(const Matrix &otherMatrix);

    Matrix &operator*=(const Matrix &b);
};
#endif //VECTOR_MTRX_H
