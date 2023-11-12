#include "ListOfShapes.h"
#include "Rectangle.h"
#include "Circle.h"
#include <iostream>
#include <string>

using namespace std;

void displayMenu() {
	cout << "=======================" << endl;
	cout << "[Shape List]" << endl;
	// You would typically pass the current number of shapes in the list here
	cout << "Please choose an option:" << endl;
	cout << "1. Add Rectangle" << endl;
	cout << "2. Add Circle" << endl;
	cout << "3. Remove Shape" << endl;
	cout << "4. Display Shapes" << endl;
	cout << "5. Quit" << endl;
	cout << ">> ";
}

void addRectangle(ListOfShapes& listOfShapes) {
	string color;
	double length, breadth;

	cout << "[Add Rectangle]" << endl;
	cout << "Enter Color: ";
	cin >> color;
	cout << "Enter length: ";
	cin >> length;
	cout << "Enter breadth: ";
	cin >> breadth;

	listOfShapes.addShape(new Rectangle(color, length, breadth));
	cout << ".. [Adding Rectangle]" << endl;
}

void addCircle(ListOfShapes& listOfShapes) {
	string color;
	double radius;

	cout << "[Add Circle]" << endl;
	cout << "Enter Color: ";
	cin >> color;
	cout << "Enter radius: ";
	cin >> radius;

	listOfShapes.addShape(new Circle(color, radius));
	cout << ".. [Adding Circle]" << endl;
}

//g++ .\Lab6Main.cpp .\ListOfShapes.cpp .\Shape.cpp .\Rectangle.cpp .\Circle.cpp -o Lab6Main.exe
int main() {
	ListOfShapes listOfShapes;
	int choice;

	do {
		displayMenu();
		cin >> choice;

		switch (choice) {
			case 1:
				addRectangle(listOfShapes);
				break;
			case 2:
				addCircle(listOfShapes);
				break;
			case 3:
				cout << "..[Removing Shape]" << endl;
				listOfShapes.removeShape();
				break;
			case 4:
				cout << "[Display Shapes]" << endl;
				listOfShapes.displayShapes();
				break;
			case 5:
				cout << ".. [Quitting]" << endl;
				break;
			default:
				cout << "Invalid option. Please try again." << endl;
		}
	} while (choice != 5);

	return 0;
}
