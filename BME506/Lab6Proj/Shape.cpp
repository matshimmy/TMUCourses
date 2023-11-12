#include "Shape.h"

Shape::Shape(string color) {
	this->color = color;
}

Shape::~Shape() {}

string Shape::getColor() const {
	return color;
}
