#include <fstream>
#include "mtrx.h"

int main(int argc, char **argv) {
    if(argc != 3) {
        std::cerr << "Wrong count of parameters\n";
        return 0;
    }
    std::ifstream in(argv[1]);
    std::ofstream out(argv[2]);

    int size, sequencesCount;
    in >> size >> sequencesCount;
    Matrix *a = new Matrix{size};

    a->init(in);
    Matrix *b = new Matrix{*a};
    std::pair<float, float> maxes{a->getMaxes()};
    b->transport();
    *b *= 1.f / maxes.first / maxes.second;
    Matrix r{size}, res{size};
    Matrix b0{*b};
    *b *= *a;
    delete a;
    r -= *b;
    delete b;
    Matrix r0{r};
    res += r;

    for(int index = 0; index < sequencesCount - 1; index++) {
        r *= r0;
        res += r;
    }

    res *= b0;
    res.printData(out);
    in.close();
    out.close();
    return 0;
}
