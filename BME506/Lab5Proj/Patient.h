#ifndef PATIENT_H_
#define PATIENT_H_

#include <iostream>
using namespace std;

enum Condition { UNKNOWN, LABOUR, ADMIT };

class Patient {
private:
	string name;
	int healthCardNumber;
	Condition condition;
	float cervixDilation;
public:
	Patient();
	Patient(string name, int healthCardNumber); // assume condition = UNKNOWN, cervixDilation = 0
	~Patient();
	
	string getName();
	int getHealthCardNumber();
	Condition getCondition();
	float getCervixDilation();
	
	void setName(string name);
	void setHealthCardNumber(int healthCardNumber);
	void setCondition(Condition condition);
	void setCervixDilation(float cervixDilation);
};
#endif