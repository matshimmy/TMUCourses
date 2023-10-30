#include "Patient.h"

// Default constructor
Patient::Patient() {
    cout << "Patient() ctor ..." << endl;
	this->name = "";
	this->healthCardNumber = 0;
	this->condition = UNKNOWN;
	this->cervixDilation = 0.0;
}

// Parameterized constructor
Patient::Patient(string name, int healthCardNumber) {
    cout << "Patient(string name, int healthCardNumber) ctor ..." << endl;
	this->name = name;
	this->healthCardNumber = healthCardNumber;
	this->condition = UNKNOWN;
	this->cervixDilation = 0.0;
}

// Destructor
Patient::~Patient() {
    cout << "~Patient() dtor ..." << endl;
}

// Getters
string Patient::getName() {
	return name;
}

int Patient::getHealthCardNumber() {
	return healthCardNumber;
}

Condition Patient::getCondition() {
	return condition;
}

float Patient::getCervixDilation() {
	return cervixDilation;
}

// Setters
void Patient::setName(string name) {
	this->name = name;
}

void Patient::setHealthCardNumber(int healthCardNumber) {
	this->healthCardNumber = healthCardNumber;
}

void Patient::setCondition(Condition condition) {
	this->condition = condition;
}

void Patient::setCervixDilation(float cervixDilation) {
	this->cervixDilation = cervixDilation;
}
