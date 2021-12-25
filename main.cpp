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

