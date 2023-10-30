#include "Patient.h"
#include "OTPRegister.h"
using namespace std;

//g++ .\Lab5Main.cpp .\Patient.cpp .\OTPRegister.cpp -o Lab5Main.exe
int main() {
	int option;
	int patientAmount;
	string name;
	int healthCardNumber;
	OTPRegister OTPRegister;

	while (true) {
		patientAmount = OTPRegister.patientAmount();
		cout << "=======================\nThere are currently " << patientAmount << " patient(s) in the list\n" << endl;
		cout << "Please choose an option:\n1. Register Patient\n2. Examine Patient\n3. Display Patients\n4. Quit\n>> ";
		cin >> option;
		cout << "=============" << endl;
		if (option == 1) {
			cout << "[Register Patient]" << endl;
			cout << "Enter Name: ";
			cin >> name;
			cout << "Enter Health Card Number: ";
			cin >> healthCardNumber;
			OTPRegister.registerPatient(name, healthCardNumber);
			cout << ".. [Registering]\n" << endl;
		}
		else if (option == 2) {
			cout << "[Examine Patient]" << endl;
		}
		else if (option == 3) {
			cout << "[Display Patients]" << endl;
		}
		else if (option == 4) {
			cout << ".. [Quitting]" << endl;
			return 0;
		}
	}
}