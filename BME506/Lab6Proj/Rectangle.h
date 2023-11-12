#ifndef RECTANGLE_H_
#define RECTANGLE_H_

#include "Shape.h"

class Rectangle : public Shape {
private:
	double length;
	double breadth;

public:
	Rectangle(string color, double length, double breadth);
	virtual ~Rectangle();
	void print() const override;
};

#endif // RECTANGLE_H_
