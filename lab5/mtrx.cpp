#include "mtrx.h"

Matrix::Matrix(int length): size(length) {
    data = new float[size * size];
    for(int index = 0; index < size; index++) {
        data[index * (size + 1)] = 1;
    }
}

Matrix::~Matrix() {
    delete[] data;
    data = nullptr;
}

Matrix::Matrix(const Matrix &otherMatrix):
        size(otherMatrix.size)
{
    data = new float[size * size];
    for(int index = 0; index < size * size; index++)
        data[index] = otherMatrix.data[index];
}

void Matrix::init(std::istream &input) {
    for(int index = 0; index < size * size; index++)
        input >> data[index];
}

void Matrix::printData(std::ostream &output) const {
    output << std::fixed;
    output.precision(2);
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size; j++) {
            output << data[size * i + j] << "\t";
        }
        output << '\n';
    }
}

void Matrix::transport() {
    for(int i = 0; i < size; i++) {
        for(int j = i + 1; j < size; j++) {
            std::swap(data[size * i + j], data[size * j + i]);
        }
    }
}

std::pair<float, float> Matrix::getMaxes() const {
    float maxRow = .0, maxColumn = .0;
    for(int i = 0; i < size; i++) {
        float rows = .0, columns = .0;
        for(int j = 0; j < size; j++) {
            rows += data[i * size + j] >= 0 ? data[i * size + j] : -data[i * size + j];
            columns += data[j * size + i] >= 0 ? data[j * size + i] : -data[j * size + i];
        }
        if(rows > maxRow) maxRow = rows;
        if(columns > maxColumn) maxColumn = columns;
    }
    return std::pair<float, float>{maxRow, maxColumn};
}
