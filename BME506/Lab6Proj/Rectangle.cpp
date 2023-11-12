#include "Rectangle.h"

Rectangle::Rectangle(string color, double length, double breadth) : Shape(color) {
    // cout << "Rectangle(string color, double length, double breadth) ctor ..." << endl;
	this->length = length;
	this->breadth = breadth;
}

Rectangle::~Rectangle() {
    // cout << "~Rectangle() dtor ..." << endl;
}

void Rectangle::print() const {
	cout << "Rectangle of color: " << getColor() << ", Area: " << (length * breadth) << endl;
}
