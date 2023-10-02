#ifndef LAB4_H
#define LAB4_H

#include <iostream>
#include <fstream>
#include <sstream>
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

void writeFile(PatientRecord recordArray[]);

#endif /* LAB4_H */