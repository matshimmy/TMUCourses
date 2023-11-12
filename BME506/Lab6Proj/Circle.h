#ifndef CIRCLE_H_
#define CIRCLE_H_

#include "Shape.h"
#include <iostream>

class Circle : public Shape {
private:
	double radius;

public:
	Circle(string color, double radius);
	virtual ~Circle();
	void print() const override;
};

#endif // CIRCLE_H_
