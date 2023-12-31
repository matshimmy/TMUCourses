#ifndef CIRCLE_H_
#define CIRCLE_H_

#include "Shape.h"
#include <iostream>
#include <iomanip>

class Circle : public Shape {
private:
	double radius;

public:
	Circle(string color, double radius);
	virtual ~Circle();
	virtual void print();
};

#endif // CIRCLE_H_
