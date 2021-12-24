#include <opencv2/highgui/highgui.hpp>
#include <stdio.h>
#include <stdlib.h>
#include "transform.h"

int main(int argc,char *argv[]){
    CvCapture *capture = cvCreateCameraCapture(0);
    if (!capture) return 0;
    while(1) {
        IplImage *frame = cvQueryFrame(capture);
        if(!frame) break;

        transformImage(*frame);

        cvShowImage("test", frame);
        char c = cvWaitKey(33);
        if(c == 27) break;
    }
    cvReleaseCapture(&capture);
    cvDestroyWindow("test");
    return 0;
}

