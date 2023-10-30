#ifndef OTPREGISTER_H_
#define OTPREGISTER_H_

#include <iostream>
#include <deque>
#include "Patient.h"
using namespace std;

class OTPRegister {
private:
	deque<Patient*> queue;
public:
	OTPRegister();
	~OTPRegister();
	
	void registerPatient(Patient* patient);
    bool examine();
    void displayRegister(); //a helping function
};
#endif