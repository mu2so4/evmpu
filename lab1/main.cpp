#include <iostream>
#include <fstream>
#include <cstdlib>
#define PREC 1000001l

using namespace std;

int main(int argc, char **argv) {
    ofstream out("output.txt");
    if(argc != 2) {
	cout << "Wrong input\n";
	out << "0\n";
	return 0;
    }
    long long dotsCount = atoll(argv[1]), goodDots = 0;
    srand(time(NULL));

    for(long long iter = 0; iter < dotsCount; iter++) {
	long long x = rand() % PREC, y = rand() % PREC;
	if(x * x + y * y <= (PREC - 1) * (PREC - 1))
	    goodDots++;
    }
    out.precision(10);
    out << 4. * goodDots / dotsCount << '\n';
    out.close();
    return 0;
}
