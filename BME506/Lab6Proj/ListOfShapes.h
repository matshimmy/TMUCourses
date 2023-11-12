#ifndef LISTOFSHAPES_H_
#define LISTOFSHAPES_H_

#include "Shape.h"
#include <iostream>
#include <vector>
using namespace std;

class ListOfShapes {
private:
	vector<Shape*> shapes;

public:
	ListOfShapes();
	~ListOfShapes();
	void addShape(Shape* shape);
	void removeShape();
	void displayShapes();
	int shapeAmount();
};

#endif // LISTOFSHAPES_H_
