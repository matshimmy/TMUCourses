#include "Lab4.h"
#include <climits>
#include <cstring>
#include <iostream>
#include <string>

void writeIntoFileStream(PatientRecord recordArray[], ofstream& outputFileStream, int patientAmount) {
	outputFileStream << "Patients " << patientAmount << endl;
	for (int i = 0; i < patientAmount; ++i) {
		outputFileStream << recordArray[i].firstName << " " << recordArray[i].surName << " ";

		if (A == recordArray[i].bloodType) outputFileStream << "A ";
		else if (AB == recordArray[i].bloodType) outputFileStream << "AB ";
		else if (O == recordArray[i].bloodType) outputFileStream << "O ";
		else if (B == recordArray[i].bloodType) outputFileStream << "B ";

		if (Heart == recordArray[i].organType) outputFileStream << "heart ";
		else if (Kidney == recordArray[i].organType) outputFileStream << "kidney ";
		else if (Liver == recordArray[i].organType) outputFileStream << "liver ";
		else if (Lung == recordArray[i].organType) outputFileStream << "lung ";

		outputFileStream << recordArray[i].age << " ";
		outputFileStream << recordArray[i].yearAdded << endl;
	}
}

void writeFile(PatientRecord recordArray[], int patientAmount) {
	ofstream outputFileStream;
	outputFileStream.open("transplantPatients.txt");
	if (outputFileStream.is_open()) {
		writeIntoFileStream(recordArray, outputFileStream, patientAmount);
		outputFileStream.close();
	}
	else
		cout << "Unable to open file" << endl;
}

void readFromFileStream(PatientRecord recordArray[], ifstream& outputFileStream) {
}

void readFile(PatientRecord recordArray[]) {
	ifstream inputFileStream;
	inputFileStream.open("transplantPatients.txt");
	if (inputFileStream.is_open()) {
		readFromFileStream(recordArray, inputFileStream);
		inputFileStream.close();
	}
}

void processToken(int tokNum, string& tok, PatientRecord& patient) {
	if (1 == tokNum) patient.firstName = tok;
	if (2 == tokNum) patient.surName = tok;
	if (3 == tokNum) {
		if (0 == tok.compare("A")) patient.bloodType = A;
		else if (0 == tok.compare("AB")) patient.bloodType = AB;
		else if (0 == tok.compare("O")) patient.bloodType = O;
		else if (0 == tok.compare("B")) patient.bloodType = B;
	}
	if (4 == tokNum) {
		if (0 == tok.compare("heart")) patient.organType = Heart;
		else if (0 == tok.compare("kidney")) patient.organType = Kidney;
		else if (0 == tok.compare("liver")) patient.organType = Liver;
		else if (0 == tok.compare("lung")) patient.organType = Lung;
	}
	if (5 == tokNum) patient.age = atoi(tok.c_str());
	if (6 == tokNum) patient.yearAdded = atoi(tok.c_str());
}

void tokenizeAndFillup(stringstream& aStrStream, PatientRecord& patient) {
	string token;
	int tokenNumber = 1;
	while (aStrStream >> token) {
		processToken(tokenNumber, token, patient);
		tokenNumber = tokenNumber + 1;
	}
}

void printPatients(PatientRecord recordArray[], int patientAmt) {
	cout << "Patients " << patientAmt << endl;
	for (int i = 0; i < patientAmt; i++) {
		cout << recordArray[i].firstName << " " << recordArray[i].surName << " ";

		if (recordArray[i].bloodType == A) cout << "A ";
		else if (recordArray[i].bloodType == AB) cout << "AB ";
		else if (recordArray[i].bloodType == O) cout << "O ";
		else if (recordArray[i].bloodType == B) cout << "B ";

		if (recordArray[i].organType == Heart) cout << "heart ";
		else if (recordArray[i].organType == Kidney) cout << "kidney ";
		else if (recordArray[i].organType == Liver) cout << "liver ";
		else if (recordArray[i].organType == Lung) cout << "lung ";

		cout << recordArray[i].age << " " << recordArray[i].yearAdded << endl;
	}
}

int main(int argc, char* argv[]) {
	int patientAmount = 0;
	int option;
	PatientRecord recordArray[100];
	string inputLine;
	stringstream ss;
	while (true) {
		cout << "=======================\n[Organ Transplant List]\nThere are currently " << patientAmount << " patient(s) in the list\n" << endl;
		cout << "Please choose an option:\n1. Add Patient\n2. Show List of Patients\n3. Save List of Patients\n4. Quit" << endl;
		cin >> option;
		cout << "=============" << endl;
		if (option == 1) {
			cout << "[Add Patient]" << endl;
			cin.clear();
			cin.ignore(INT_MAX, '\n');
			getline(cin, inputLine);
			ss.clear();
			ss.str(inputLine);
			tokenizeAndFillup(ss, recordArray[patientAmount]);
			patientAmount++;
		}
		else if (option == 2) {
			cout << "[Show List of Patients]" << endl;
			printPatients(recordArray, patientAmount);
		}
		else if (option == 3) {
			cout << "[Save List of Patients]" << endl;
			writeFile(recordArray, patientAmount);
		}
		else if (option == 4) {
			cout << "Quitting..";
			return 0;
		}
	}
} // end of main