#include "transform.h"

void transformImage(IplImage &image) {
	cv::Mat mtr = cv::cvarrToMat(&image);
    mtr *= 1.1;
    image = cvCloneImage(&(IplImage)mtr);
}
