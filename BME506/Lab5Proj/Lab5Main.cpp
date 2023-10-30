#include "Patient.h"
#include "OTPRegister.h"
using namespace std;

//g++ .\Lab5Main.cpp .\Patient.cpp .\OTPRegister.cpp -o Lab5Main.exe
int main() {
    cout << "init main" << endl;

    Patient patient;
    patient.setName("test");
    cout << patient.getName() << endl;

}