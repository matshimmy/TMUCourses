#include "Lab1.h"

// implement the function enterDNAString
string enterDNAString() {
  string dna;
  cout << "Enter DNA string\n>> ";
  cin >> dna;
  return dna;
}
// implement the function checkValidity

// implement the function compliment

int main() {

  while (true) {
    cout << "Please choose an option:" << endl;
    cout << "1. Enter DNA string, echo it" << endl;
    cout << "2. Enter DNA string, echo it, validate it" << endl;
    cout << "3. Enter DNA string, echo it, validate it, compliment it if valid"
         << endl;
    cout << "4. Exit" << endl;

    int option;
    cout << ">> ";

    cin >> option;

    // Following "if" statement is to avoid problem with cin
    // if a non-numeric character is read by cin when
    // it is actually supposed to read an integer.
    if (!cin) {
      cin.clear();
      cin.ignore(INT_MAX, '\n');
      cout << "Non-numeric option! Try again." << endl;
      continue;
    }

    if (1 == option) {
      string str1 = enterDNAString();
      cout << str1 << " (" << str1.size() << " chars)";
      cout << endl;
    } else if (2 == option) {
      string str1 = enterDNAString();
      cout << str1 << " (" << str1.size() << " chars)";
      bool b = checkValidity(str1);
      if (b == true)
        cout << " : VALID DNA";
      else
        cout << " : INVALID DNA";
      cout << endl;
    }
    //   else if (3 == option) {
    //   string str1 = enterDNAString();
    //   cout << str1 << " (" << str1.size() << " chars)";
    //   bool b = checkValidity(str1);
    //   if (b == true)
    //     cout << " : VALID DNA";
    //   else
    //     cout << " : INVALID DNA";
    //   compliment(str1);
    //   cout << endl;
    // } 
    else if (4 == option) {
      return 0;
    } else {
      cout << "Integer option, but incorrect! Try again." << endl;
    }
  }
  return 0;
} // end of main
