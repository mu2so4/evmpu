#include <iostream>
#include <fstream>
#include "mtrx.h"
#include "traversal.h"

int main(int argc, char **argv) {
    if(argc != 3) {
        std::cerr << "Wrong input\n";
        return 0;
    }

    union ticks {
        unsigned long long t64 = 0;
        struct s32 { long th, tl; } t32;
    } start, end;

    int size = atoi(argv[1]), watchingCount = atoi(argv[2]);
    int *arr = createLoop(size);

    //acceleration
    auto *a = new Matrix{10}, *b = new Matrix{*a};
    for(int index = 0; index < 410000; index++)  //410'000 is the perfect count
        *a *= *b;
    delete a;
    delete b;

    std::ofstream out("/dev/null");
    //heating
    int pos = 0;
    for(int index = 0; index < size * watchingCount; index++) {
        pos = arr[pos];
        if(pos == 314) out << "100 Pi\n";
    }

    asm("rdtsc\n":"=a"(start.t32.th),"=d"(start.t32.tl));
    for(int index = 0; index < size * watchingCount; index++) {
        pos = arr[pos];
        if(pos == 314) out << "100 Pi\n";
    }
    asm("rdtsc\n":"=a"(end.t32.th),"=d"(end.t32.tl));

    std::cout << size << '\t' << (end.t64 - start.t64) / (unsigned long long) size << '\n';

    out.close();
    return 0;
}
