#include "Lab4.h"

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
		if (0 == tok.compare("heart") || 0 == tok.compare("Heart")) patient.organType = Heart;
		else if (0 == tok.compare("kidney") || 0 == tok.compare("Kidney")) patient.organType = Kidney;
		else if (0 == tok.compare("liver") || 0 == tok.compare("Liver")) patient.organType = Liver;
		else if (0 == tok.compare("lung") || 0 == tok.compare("Lung")) patient.organType = Lung;
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
	else cout << "Unable to open file" << endl;
}

int readFromFileStream(PatientRecord recordArray[], ifstream& inputFileStream) {
	stringstream ss;
	string txtLine;
	int patients;
	getline(inputFileStream, txtLine);//patient #
	ss.str(txtLine);
	ss >> txtLine;//patient
	ss >> txtLine;// #
	patients = stoi(txtLine);
	ss.str("");
	ss.clear();
	for (int i = 0; i < patients; i++) {
		getline(inputFileStream, txtLine);
		ss.str(txtLine);
		tokenizeAndFillup(ss, recordArray[i]);
		ss.str("");
		ss.clear();
	}
	return patients;
}

int readFile(PatientRecord recordArray[]) {
	ifstream inputFileStream;
	inputFileStream.open("transplantPatients.txt");
	int patients = 0;
	if (inputFileStream.is_open()) {
		patients = readFromFileStream(recordArray, inputFileStream);
		inputFileStream.close();
	}
	else cout << "Unable to open file" << endl;
	return patients;
}

void printPatients(PatientRecord recordArray[], int patientAmt) {
	cout << "ID\tName\t\tBlood\tOrgan\tAge\tYear Added" << endl;
	cout << "-----------------------------------------------------------" << endl;

	for (int i = 0; i < patientAmt; i++) {
		cout << i+1 << "\t" << recordArray[i].surName << ", " << recordArray[i].firstName[0] << "\t";

		if (recordArray[i].bloodType == A) cout << "A ";
		else if (recordArray[i].bloodType == AB) cout << "AB ";
		else if (recordArray[i].bloodType == O) cout << "O ";
		else if (recordArray[i].bloodType == B) cout << "B ";

		cout << "\t";

		if (recordArray[i].organType == Heart) cout << "heart ";
		else if (recordArray[i].organType == Kidney) cout << "kidney ";
		else if (recordArray[i].organType == Liver) cout << "liver ";
		else if (recordArray[i].organType == Lung) cout << "lung ";

		cout << "\t" << recordArray[i].age << "\t" << recordArray[i].yearAdded << endl;
	}
}

int main(int argc, char* argv[]) {
	int option;
	PatientRecord recordArray[100];
	string inputLine;
	stringstream ss;
	int patientAmount = readFile(recordArray);
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
			cout << ".. [Adding]" << endl;
		}
		else if (option == 2) {
			cout << "[Show List of Patients]" << endl;
			printPatients(recordArray, patientAmount);
		}
		else if (option == 3) {
			cout << "[Save List of Patients] (File: transplantPatients.txt)" << endl;
			writeFile(recordArray, patientAmount);
		}
		else if (option == 4) {
			cout << "Quitting..";
			return 0;
		}
	}
} // end of main