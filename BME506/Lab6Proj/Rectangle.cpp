#include "Rectangle.h"
#include <iostream>

Rectangle::Rectangle(string color, double length, double breadth) : Shape(color) {
	this->length = length;
	this->breadth = breadth;
}

Rectangle::~Rectangle() {}

void Rectangle::print() const {
	cout << "Rectangle of color: " << getColor() << ", Area: " << (length * breadth) << endl;
}
