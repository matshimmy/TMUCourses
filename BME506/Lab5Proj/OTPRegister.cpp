#include "OTPRegister.h"

OTPRegister::OTPRegister() {
    cout << "OTPRegister() ctor ..." << endl;
}

OTPRegister::~OTPRegister() {
    cout << "~OTPRegister() dtor ..." << endl;
    int qSize = queue.size();
    for (int i = 0; i < qSize; ++i)
    {
        delete queue[i];
        queue[i] = 0;
    }
}

void OTPRegister::registerPatient(string name, int healthCardNumber) {
    Patient* newPatient = new Patient(name, healthCardNumber); 
    queue.push_back(newPatient);
}

bool OTPRegister::examine() {
    if (queue.empty()) return false;

    queue.pop_front();
    return true;
}

int OTPRegister::patientAmount() {
    return queue.size();
}

void OTPRegister::displayRegister() {
    cout << "queue has: ";
    // int qSize = queue.size();
    // for (int i = 0; i < qSize; ++i) {
    //     cout << i << " ";
    // }
    // cout << endl;
}