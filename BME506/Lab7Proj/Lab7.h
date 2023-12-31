#ifndef LAB7_H
#define LAB7_H

#include <iostream>
using namespace std;

class Product {
private:
	int id;
public:
	Product(int i);
	~Product();
	int getID();
};

//WRITE THE RELEVANT CODE HERE RELATED TO FACTORY CLASS FOLLOWING 
//THE SINGLETON PATTERN.
class Factory {
private:
	static Factory* instance;
	Factory();
	~Factory();
public:
	static Factory* getInstance();
	static void destroyInstance();
	Product* createProduct(int id);
};

#endif /* LAB7_H */