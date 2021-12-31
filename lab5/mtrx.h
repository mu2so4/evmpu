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

    void init(std::istream &input);
    void printData(std::ostream &output) const;
    void transport();
    std::pair<float, float> getMaxes() const;

    Matrix &operator+=(const Matrix &b);
    Matrix &operator-=(const Matrix &b);
    Matrix &operator*=(const Matrix &b);
    Matrix &operator*=(float mul);
};
#endif //VECTOR_MTRX_H
