#include "Lab3.h"
#include <cstdlib>
#include <iostream>
#include <string>

// implement the function accessSalaryArrayByPointerArithmetic
void accessSalaryArrayByPointerArithmetic()
{

  int salary[3];
  int *psal = salary;// psal is pointer to salary

  for (int i = 0; i < 3; ++i)
  {
    cout << "Enter Salary: ";
    cin >> *(psal + i);
  }

  cout << endl;
  cout << "Entered salaries are: " << endl;
  for (int i = 0; i < 3; ++i)
  {
    cout << *(psal + i) << " ";
  }

  cout << endl;
  cout << "Updated salaries are: " << endl;
  for (int i = 0; i < 3; ++i)
  {
    *(psal + i) = *(psal + i) + *(psal + i) / (i + 1);
    cout << *(psal + i) << " ";
  }
}

// implement the function sortIntegersByPointerArithmetic
int *sortIntegersByPointerArithmetic(int *arr, int size)
{
  int change;
  do // need to check if sorted at least once
  {
    change = 0;
    for (int i = 0; i < size - 1; i++)
    {
      if (*(arr + i) > *(arr + i + 1)) // bubble sort
      {
        int temp = *(arr + i);
        *(arr + i) = *(arr + i + 1);
        *(arr + i + 1) = temp;
        change++;
      }
    }
  } while (change != 0);
  return arr;
}

int main(int argc, char *argv[])
{

  string p1("part1");
  string p2("part2");

  if (0 == p1.compare(argv[1]))
  { // PART I
    accessSalaryArrayByPointerArithmetic();
  }

  if (0 == p2.compare(argv[1]))
  { // PART II
    const int sizeArr = argc - 2;
    int toSort[sizeArr];
    cout << "Numbers were entered in command-line in the following order:" << endl;
    for (int i = 2; i < argc; i++)
    {
      *(toSort + i - 2) = stoi(*(argv + i));
      cout << *(toSort + i - 2) << "\t";
    }
    int *sorted = sortIntegersByPointerArithmetic(toSort, sizeArr);
    cout << "\nThe numbers in ascending order are:" << endl;
    for (int i = 0; i < sizeArr; i++)
    {
      cout << *(sorted + i) << "\t";
    }
  }

} // end of main