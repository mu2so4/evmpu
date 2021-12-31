#include <opencv2/core/core.hpp>
#include "transform.h"

void transformImage(cv::Mat &mtr) {
	cv::Mat neg = cv::Scalar(255, 255, 255) - mtr;
	mtr = std::move(neg);
}
