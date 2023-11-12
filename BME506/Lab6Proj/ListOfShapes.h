#ifndef LISTOFSHAPES_H_
#define LISTOFSHAPES_H_

#include "Shape.h"
#include <vector>
using namespace std;

class ListOfShapes {
private:
	vector<Shape*> shapes;

public:
	~ListOfShapes();
	void addShape(Shape* shape);
	void removeShape();
	void displayShapes() const;
};

#endif // LISTOFSHAPES_H_
