#include "Lab2.h"
#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <string>

// implement the function initialize
void initialize(double &k, int &n0) {}
// implement the function calculate
void calculate(const double k, const int n0, double array[]) {
  for (int x = 0; x < 11; x++) {
    array[x] = n0 * exp(k * x);
  }
}
// implement the function display
void display(const double array[]) {
  cout << "\n\tGrowth Summary:\n\n\tHour\tPopulation\n\t====\t==========\n";
  for (int x = 0; x < 11; x++) {
    cout << fixed << setprecision(3) << "\t" << x << "\t" << array[x] << endl;
  }
}
// implement the function twoDdisplay
void twoDdisplay(int num, const double arr[][11]) {
  cout << "\n\tAgar Summary:\n\n\tHour";
  for (int x = 0; x < num; x++) {
    cout << "\tPopulation (" << x << ")";
  }
  cout << "\n\t========";
  for (int x = 0; x < num; x++) {
    cout << "==============";
    if (x != num - 1) {
      cout << "==";
    }
  }
  cout << endl;
  for (int x = 0; x < 11; x++) {
    cout << fixed << setprecision(3) << "\t" << x << "\t";
    for (int y = 0; y < num; y++) {
      cout << arr[y][x] << "\t\t\t";
    }
    cout << endl;
  }
}

int main(int argc, char *argv[]) {
  double k;
  int n0;
  double array[11];
  if (1 == argc) { // Part I
    // WRITE THE CODE FOR Part I HERE.
    cout << "Initializing Bacteria:\n\tGrowth factor (k) [0.0-1.0] : ";
    cin >> k;
    cout << "\tInitial population (N0) [0-1000] : ";
    cin >> n0;
    calculate(k, n0, array);
    display(array);
  } else if (2 == argc) { // Part III
    // WRITE THE CODE FOR Part III HERE.
    const int num = stoi(argv[1]);
    double arr[num][11];
    for (int x = 0; x < num; x++) {
      cout << "Initializing Bacteria:\n\tGrowth factor (k) [0.0-1.0] : ";
      cin >> k;
      cout << "\tInitial population (N0) [0-1000] : ";
      cin >> n0;
      cout << endl;
      calculate(k, n0, arr[x]);
    }
    twoDdisplay(num, arr);
  } else if (3 == argc) { // Part II
    // WRITE THE CODE FOR Part II HERE.
    cout << "Initializing Bacteria:\n\tGrowth factor (k) [0.0-1.0] : "
         << argv[1] << endl;
    cout << "\tInitial population (N0) [0-1000] : " << argv[2] << endl;
    k = stod(argv[1]);
    n0 = stoi(argv[2]);

    calculate(k, n0, array);
    display(array);
  } else {
    cout << "Number of command-line arguments "
         << "(including the name of the program) "
         << "should be three or less." << endl;
  }
} // end of main