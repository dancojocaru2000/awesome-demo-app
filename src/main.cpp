#define STRINGIFY2(X) #X
#define STRINGIFY(X) STRINGIFY2(X)

#ifndef PROGRAM_VERSION
#define PROGRAM_VERSION unknown
#endif

#include <iostream>
using std::cout;
using std::endl;

const char program_version[] = STRINGIFY(PROGRAM_VERSION);

int main() {
	cout << "awesome-demo-app v" << program_version << endl;
	cout << "This is a nice day!" << endl;

	return 0;
}