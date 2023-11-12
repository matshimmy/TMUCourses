#include "Circle.h"
#include <iostream>

Circle::Circle(string color, double radius) : Shape(color) {
	this->radius = radius;
}

Circle::~Circle() {}

void Circle::print() const {
	double area = 3.14 * radius * radius;
	cout << "Circle of color: " << getColor() << ", Area: " << area << endl;
}
