#include <immintrin.h>
#include "mtrx.h"


Matrix &Matrix::operator+=(const Matrix &b) {
    if(size == b.size) {
        for(int index = 0; index + 4 <= size * size; index += 4) {
            _mm_store_ps(data + index,
             _mm_add_ps(_mm_load_ps(data + index), _mm_load_ps(b.data + index)));
        }
    }
    return *this;
}

Matrix &Matrix::operator-=(const Matrix &b) {
    if(size == b.size) {
        for(int index = 0; index + 4 <= size * size; index += 4) {
            _mm_store_ps(data + index,
             _mm_sub_ps(_mm_load_ps(data + index), _mm_load_ps(b.data + index)));
        }
    }
    return *this;
}

Matrix &Matrix::operator*=(const Matrix &b) {
    if(size == b.size) {
        auto *newData = new float[size * size];
        if(size == 4) newData[4] = 0; //else I will get a nan
        for(int row = 0; row < size; row++) {
            for(int column = 0; column < size; column++) {
                __m128 muller = _mm_set1_ps(data[size * row + column]);
                for(int position = 0; position + 4 <= size; position += 4) {
                    _mm_store_ps(newData + size * row + position,
                                 _mm_add_ps(_mm_load_ps(newData + size * row + position),
                                _mm_mul_ps(_mm_load_ps(b.data + size * column + position), muller)));

                }
            }
        }

        delete[] data;
        data = newData;
    }
    return *this;
}

Matrix &Matrix::operator*=(float mul) {
    __m128 muls = _mm_set1_ps(mul);
    for(int index = 0; index + 4 <= size * size; index += 4) {
        _mm_store_ps(data + index,
             _mm_mul_ps(_mm_load_ps(data + index), muls));
    }
    return *this;
}
