#include "Circle.h"

Circle::Circle(string color, double radius) : Shape(color) {
	// cout << "Circle(string color, double radius) ctor ..." << endl;
	this->radius = radius;
}

Circle::~Circle() {
	// cout << "~Circle() dtor ..." << endl;
}

void Circle::print() {
	cout << "Circle R=" << fixed << setprecision(1) << radius << ", area=" << setprecision(2) << 3.14 * radius * radius;
	cout << ", " << getColor() << endl;
}
