#ifndef OTPREGISTER_H_
#define OTPREGISTER_H_

#include <iostream>
#include <iomanip>
#include <deque>
#include "Patient.h"
using namespace std;

class OTPRegister {
private:
	deque<Patient*> queue;
public:
	OTPRegister();
	~OTPRegister();

	void registerPatient(string name, int healthCardNumber);
	bool examine();
	void displayRegister();

	void printPatient(Patient* patient);
	int patientAmount();
};
#endif