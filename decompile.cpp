#include <stdio.h>
#include <cmath>
#include <climits>

void func1(double *arr1, double *arr2) {
    for(int index = 0; index < 50000000; index++) {
        arr1[index] = rand() * 100. / INT_MAX - 50;
        arr2[index] = rand() * 100. / INT_MAX - 50;
    }
}

double func2(const double *arr1, const double *arr2) {
    double res = .0;
    for(int index = 0; index < 50000000; index++)
        res += sin(arr1[index]) * 7.38905609893 * cos(arr2[index]);
    return res;
}

int main() {
    double *a = new double[50000000];
    double *b = new double[50000000];
    func1(a, b);
    printf("\n\n result=%f\n", func2(a, b));

    delete[] a;
    delete[] b;
    return 0;
}
