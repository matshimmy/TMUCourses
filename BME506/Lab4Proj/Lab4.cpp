#include "Lab4.h"
#include <cstdlib>
#include <iostream>
#include <string>

void writeIntoFileStream(PatientRecord recordArray[],
                         ofstream &outputFileStream) {
  for (int i = 0; i < sizeof(recordArray) / sizeof(recordArray[0]); ++i) {
    outputFileStream << recordArray[i].firstName << " "
                     << recordArray[i].surName << " ";

    if (A == recordArray[i].bloodType)
      outputFileStream << "A ";
    else if (AB == recordArray[i].bloodType)
      outputFileStream << "AB ";
    else if (O == recordArray[i].bloodType)
      outputFileStream << "O ";
    else if (B == recordArray[i].bloodType)
      outputFileStream << "B ";

    if (Heart == recordArray[i].organType)
      outputFileStream << "heart ";
    else if (Kidney == recordArray[i].organType)
      outputFileStream << "kidney ";
    else if (Liver == recordArray[i].organType)
      outputFileStream << "liver ";
    else if (Lung == recordArray[i].organType)
      outputFileStream << "lung ";

    outputFileStream << recordArray[i].age << " ";
    outputFileStream << recordArray[i].yearAdded;
  }
}

void writeFile(PatientRecord recordArray[]) {
  ofstream outputFileStream;
  outputFileStream.open("transplantPatients.txt");
  if (outputFileStream.is_open()) {
    writeIntoFileStream(recordArray, outputFileStream);
    outputFileStream.close();
  } else
    cout << "Unable to open file" << endl;
}

void processToken(int tokNum, string &tok, PatientRecord &patient) {
  if (1 == tokNum) patient.firstName = tok;
  if (2 == tokNum) patient.surName = tok;
  if (3 == tokNum){
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

void tokenizeAndFillup(stringstream &aStrStream, PatientRecord &patient) {
  string token;
  int tokenNumber = 1;
  while (aStrStream >> token) {
    processToken(tokenNumber, token, patient);
    tokenNumber = tokenNumber + 1;
  }
}

void readStrings(PatientRecord recordArray[]) {
  string string1 = "Joe McGurk B kidney 37 2009";
  string string2 = "Peter Milosevic A heart 28 2012";
  // start tokenizing process
  stringstream ss;
  // use ss for first string
  ss.str(string1);
  tokenizeAndFillup(ss, recordArray[0]);
  // reuse ss for second string
  ss.str(""); // erase ss buffer
  ss.clear(); // reset ss error flags
  ss.str(string2);
  tokenizeAndFillup(ss, recordArray[1]);
}

int main(int argc, char *argv[]) {
  int patientAmount = 0;
  int option;
  while (true) {
    cout << "=======================\n[Organ Transplant List]\nThere are "
            "currently "
         << patientAmount << " patient(s) in the list\n"
         << endl;
    cout << "Please choose an option:\n1. Add Patient\n2. Show List of "
            "Patients\n"
            "3. Save List of Patients\n4. Quit"
         << endl;
    cin >> option;
    cout << "=============" << endl;
    if (option == 1) {
      cout << "[Add Patient]" << endl;
    } else if (option == 2) {
      cout << "[Show List of Patients]" << endl;
    } else if (option == 3) {
      cout << "[Save List of Patients]" << endl;
    } else if (option == 4) {
      cout << "Quitting..";
      return 0;
    }
  }
} // end of main