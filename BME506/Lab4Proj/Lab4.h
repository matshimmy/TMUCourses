#ifndef LAB4_H
#define LAB4_H

#include <climits>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cstring>
#include <cstdlib>
#include <iomanip>

using namespace std;

enum BloodType { A, AB, O, B };
enum Organ { Heart, Kidney, Lung, Liver };

struct PatientRecord {
  string firstName;
  string surName;
  BloodType bloodType;
  Organ organType;
  int age;
  int yearAdded;
};

void processToken(int tokNum, string& tok, PatientRecord& patient);
void tokenizeAndFillup(stringstream& aStrStream, PatientRecord& patient);
void writeIntoFileStream(PatientRecord recordArray[], ofstream& outputFileStream, int patientAmount);
void writeFile(PatientRecord recordArray[], int patientAmount);
int readFromFileStream(PatientRecord recordArray[], ifstream& inputFileStream);
int readFile(PatientRecord recordArray[]);
void printPatients(PatientRecord recordArray[], int patientAmt);

#endif /* LAB4_H */