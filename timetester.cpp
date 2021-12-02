#include <iostream>
#include <fstream>
#include <string.h>
#include <string>
#include <cstdlib>

using namespace std;

int main(int argc, char **argv) {
    if(argc < 2) {
	cout << "no executable file\n";
	return 0;
    }
    char exeName[100] = "/home/evmpu/20205/Muratov/task1/";
    strcat(exeName, argv[1]);
    ifstream f(exeName);

    if(!f.is_open()) {
	cout << "the file doesn't exist\n";
	return 0;
    }
    f.close();

    ifstream ctrlFile("control.txt");
    double controlValue;
    ctrlFile >> controlValue;
    ctrlFile.close();

    char cmd[200];
    strcpy(cmd, "time -p -o report.txt -a ");
    strcat(cmd, exeName);
    for(int index = 2; index < argc; index++) {
	strcat(cmd, " ");
	strcat(cmd, argv[index]);
    }

    for(int iter = 0; iter < 6; iter++) {
	system(cmd);
	ifstream result("output.txt");
	double evaluated;
	result >> evaluated;
	cout << evaluated;
	string deviation = "echo " + to_string(evaluated / controlValue - 1) + " >> report.txt";
	system(deviation.c_str());
	result.close();
	system("echo \"\" >> report.txt");
    }
    system("echo \"\" >> report.txt");
    return 0;
}