#ifndef SHAPE_H_
#define SHAPE_H_

#include <iostream>
#include <string>
using namespace std;

class Shape {
private:
	string color;

public:
	Shape(string color);
	virtual ~Shape();
	string getColor();
	virtual void print();
};

#endif // SHAPE_H_
