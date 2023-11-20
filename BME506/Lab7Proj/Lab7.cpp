#include "Lab7.h"

Product::Product(int i) {
	// cout << "Product() ctor ..." << endl;
	id = i;
}

Product::~Product() {
	// cout << "~Product() dtor ..." << endl;
}

int Product::getID() { return id; }

//WRITE THE RELEVANT CODE HERE RELATED TO FACTORY CLASS FOLLOWING 
//THE SINGLETON PATTERN (STATIC MEMBER INITIALIZATION AND BODIES OF 
//MEMBER FUNCTIONS).
Factory* Factory::instance = 0;

Factory::Factory() {
	// cout << "Factory() ctor ..." << endl;
}

Factory* Factory::getInstance() {
	if (instance == 0) {
		instance = new Factory();
	}
	return instance;
}

void Factory::destroyInstance() {
	if (instance != 0) {
		delete instance;
		instance = 0;
	}
}

Product* Factory::createProduct(int id) {
	Product* newProduct = new Product(id);
	return newProduct;
}

Factory::~Factory() {
	// cout << "~Factory() dtor ..." << endl;
}

//g++ .\Lab7.cpp -o Lab7.exe
int main(int argc, char* argv[]) {
	Factory* f = Factory::getInstance();
	Product* p1 = f->createProduct(5);
	Product* p2 = f->createProduct(6);
	cout << p1->getID() << endl;
	cout << p2->getID() << endl;
	delete p1;
	p1 = 0;
	delete p2;
	p2 = 0;
	Factory::destroyInstance();
	return 0;
} //end of main