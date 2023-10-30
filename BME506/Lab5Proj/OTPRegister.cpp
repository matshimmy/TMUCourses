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

void OTPRegister::registerPatient(Patient* patient) {
    queue.push_back(patient);
}

bool OTPRegister::examine() {
    if (queue.empty()) return false;

    queue.pop_front();
    return true;
}

void OTPRegister::displayRegister() {
    cout << "queue has: ";
    // int qSize = queue.size();
    // for (int i = 0; i < qSize; ++i) {
    //     cout << i << " ";
    // }
    // cout << endl;
}