#include "Lab3.h"
#include <cstdlib>
#include <iostream>

// implement the function accessSalaryArrayByPointerArithmetic
void accessSalaryArrayByPointerArithmetic() {

  int salary[3];
  int *psal = salary;
  
  for (int i = 0; i < 3; ++i) {
    cout << "Enter Salary: ";
    cin >> *(psal + i);
  }
  
  cout << endl;
  cout << "Entered salaries are: " << endl;
  for (int i = 0; i < 3; ++i) {
    cout << *(psal + i) << " ";
  }
  
  cout << endl;
  cout << "Updated salaries are: " << endl;
  for (int i = 0; i < 3; ++i) {
    *(psal + i) = *(psal + i) + *(psal + i) / (i + 1);
    cout << *(psal + i) << " ";
  }
}

// implement the function sortIntegersByPointerArithmetic

int main(int argc, char *argv[]) {

  string p1("part1");
  string p2("part2");

  if (0 == p1.compare(argv[1])) { // PART I
    accessSalaryArrayByPointerArithmetic();
  }

  if (0 == p2.compare(argv[1])) { // PART II
                                  // WRITE THE CODE FOR Part I HERE.
  }

} // end of main