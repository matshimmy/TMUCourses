#include "Rectangle.h"

Rectangle::Rectangle(string color, double length, double breadth) : Shape(color) {
	// cout << "Rectangle(string color, double length, double breadth) ctor ..." << endl;
	this->length = length;
	this->breadth = breadth;
}

Rectangle::~Rectangle() {
	// cout << "~Rectangle() dtor ..." << endl;
}

void Rectangle::print() {
	cout << "Rectangle L=" << fixed << setprecision(1) << length << ", B=" << breadth << ", area=" << setprecision(2) << (length * breadth);
	cout << ", " << getColor() << endl;
}
