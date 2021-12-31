<<<<<<< HEAD
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
=======
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <chrono>
#include "transform.h"

int main(int argc,char *argv[]){
    CvCapture *capture = cvCreateCameraCapture(0);
    if (!capture) {
	std::cerr << "failed to capture an image\n";
 	return 1;
	}

	auto begin = std::chrono::system_clock::now();
    for(int iter = 0;; iter++) {
	if(iter % 20 == 0)
		begin = std::chrono::system_clock::now();
        IplImage *frame = cvQueryFrame(capture);
        if(!frame) break;
	cv::Mat mtr = cv::cvarrToMat(frame);

        transformImage(mtr);

        imshow("test", mtr);
        char c = cvWaitKey(33);
        if(c == 27) break;

	if(iter % 20 == 19) {
		std::chrono::duration<double> dif = std::chrono::system_clock::now() - begin;
		std::cout << 20. / dif.count() << '\t' << dif.count() / 20 << '\n';
	}
    }
    cvReleaseCapture(&capture);
    cvDestroyWindow("test");
    return 0;
}

>>>>>>> lab4/master
