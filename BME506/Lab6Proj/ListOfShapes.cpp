#include "ListOfShapes.h"

ListOfShapes::ListOfShapes() {
    // cout << "ListOfShapes() ctor ..." << endl;
	this->shapes = vector<Shape*>();
}

ListOfShapes::~ListOfShapes() {
    // cout << "~ListOfShapes() dtor ..." << endl;
	for (Shape* shape : shapes) {
		delete shape;
	}
}

void ListOfShapes::addShape(Shape* shape) {
	shapes.push_back(shape);
}

void ListOfShapes::removeShape() {
	if (!shapes.empty()) {
		Shape* lastShape = shapes.back();
		delete lastShape;  // Delete the object pointed to by the last element
		shapes.pop_back(); // Remove the last element (pointer) from the vector
	}
}

void ListOfShapes::displayShapes() const {
	for (const Shape* shape : shapes) {
		shape->print();
	}
}

int ListOfShapes::shapeAmount() {
	return shapes.size();
}
