
#include "Lab2.h"
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>

// implement the function initialize
void initialize(double &k, int &n0) {}
// implement the function calculate
void calculate(const double k, const int n0, double array[]) {}
// implement the function display

// implement the function twoDdisplay
int main(int argc, char *argv[]) {
  double k;
  int n0;
  if (1 == argc) { // Part I
    // WRITE THE CODE FOR Part I HERE.
    cout << "Initializing Bacteria:\n\tGrowth factor (k) [0.0-1.0] : ";
    cin >> k;
    cout << "\tInitial population (N0) [0-1000] : ";
    cin >> n0;
    cout << "\n\tGrowth Summary:\n\n\tHour\tPopulation\n\t====\t==========\n";
  } else if (2 == argc) { // Part III
    // WRITE THE CODE FOR Part III HERE.
  } else if (3 == argc) { // Part II
    // WRITE THE CODE FOR Part II HERE.
  } else {
    cout << "Number of command-line arguments "
         << "(including the name of the program) "
         << "should be three or less." << endl;
  }
} // end of main