#include "ListOfShapes.h"

ListOfShapes::ListOfShapes() {
	// cout << "ListOfShapes() ctor ..." << endl;
	this->shapes = vector<Shape*>();
}

ListOfShapes::~ListOfShapes() {
	// cout << "~ListOfShapes() dtor ..." << endl;
	for (int i = 0;i < shapes.size();i++) {
		removeShape();
	}
}

void ListOfShapes::addShape(Shape* shape) {
	shapes.push_back(shape);
}

void ListOfShapes::removeShape() {
	if (!shapes.empty()) {
		Shape* lastShape = shapes.back();
		shapes.pop_back(); // Remove the last element (pointer) from the vector
		delete lastShape;  // Delete the object pointed to by the last element
		lastShape = 0;
	}
}

void ListOfShapes::displayShapes() {
	for (int i = 0;i < shapes.size();i++) {
		shapes.at(i)->print();
	}
}

int ListOfShapes::shapeAmount() {
	return shapes.size();
}
