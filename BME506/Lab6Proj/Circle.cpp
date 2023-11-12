#include "Circle.h"

Circle::Circle(string color, double radius) : Shape(color) {
    // cout << "Circle(string color, double radius) ctor ..." << endl;
	this->radius = radius;
}

Circle::~Circle() {
    // cout << "~Circle() dtor ..." << endl;
}

void Circle::print() const {
	double area = 3.14 * radius * radius;
	cout << "Circle of color: " << getColor() << ", Area: " << area << endl;
}
