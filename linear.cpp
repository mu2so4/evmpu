#include "transform.h"

void transformImage(IplImage &image) {
	IplImage *original = cvCloneImage(&image);
	uchar *img = (uchar*) image.imageData, *clone = (uchar*) original->imageData;
	for(int row = 0; row < image.height; row++) {
		for(int column = 0; column < image.width; column++) {
			int x0 = column - image.width / 2;
			int y0 = -row + image.height / 2;
			//int x1 = x0 * 2 / 3 - y0 / 3;
			//int y1 = y0 / 2;
			int x1 = x0 * 2;
			int y1 = y0 * 2;
			int X = -y1 + image.width / 2;
			int Y = x1 + image.height / 2;

			for(int index = 0; index < image.widthStep; index++) {
				img[(row * image.width + column) * image.widthStep + index] = clone[(X * image.width + Y) * image.widthStep + index];
			}
		}
	} 
}
