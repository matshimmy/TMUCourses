#ifndef RECTANGLE_H_
#define RECTANGLE_H_

#include "Shape.h"
#include <iostream>
#include <iomanip>

class Rectangle : public Shape {
private:
	double length;
	double breadth;

public:
	Rectangle(string color, double length, double breadth);
	virtual ~Rectangle();
	virtual void print();
};

#endif // RECTANGLE_H_
