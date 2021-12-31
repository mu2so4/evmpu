#include "mtrx.h"
#include <cblas.h>

Matrix &Matrix::operator+=(const Matrix &b) {
    cblas_saxpy(size * size, 1., b.data, 1, data, 1);
}

Matrix &Matrix::operator-=(const Matrix &b){
    cblas_saxpy(size * size, -1., b.data, 1, data, 1);
}

Matrix &Matrix::operator*=(const Matrix &b){
    if(size == b.size) {
        auto *newData = new float[size * size];
        cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
                size, size, size, 1.0, data, size, b.data, size,
                0.0, newData, size);
        delete[] data;
        data = newData;
    }
    return *this;
}

Matrix &Matrix::operator*=(float mul) {
    cblas_sscal(size * size, mul, data, 1);
}