#include "Shape.h"

Shape::Shape(string color) {
    // cout << "Shape(string color) ctor ..." << endl;
	this->color = color;
}

Shape::~Shape() {
    // cout << "~Shape() dtor ..." << endl;
}

string Shape::getColor() {
	return color;
}
