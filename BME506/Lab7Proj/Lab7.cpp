#include "Lab7.h"

Product::Product(int i) { id = i; }

int Product::getID() { return id; }

//WRITE THE RELEVANT CODE HERE RELATED TO FACTORY CLASS FOLLOWING 
//THE SINGLETON PATTERN (STATIC MEMBER INITIALIZATION AND BODIES OF 
//MEMBER FUNCTIONS).

int main(int argc, char* argv[]) {
	Factory* f = Factory::getInstance();
	Product* p1 = f->createProduct(5);
	Product* p2 = f->createProduct(6);
	cout << p1->getID() << endl;
	cout << p2->getID() << endl;
	return 0;
} //end of main