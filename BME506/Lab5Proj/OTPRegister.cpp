#include "OTPRegister.h"

OTPRegister::OTPRegister() {
    // cout << "OTPRegister() ctor ..." << endl;
}

OTPRegister::~OTPRegister() {
    // cout << "~OTPRegister() dtor ..." << endl;
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

    Patient* patient = queue[0];
    queue.pop_front();

    cout << "Enter Name: " << patient->getName() << endl;
    cout << "Enter Health Card Number: " << patient->getHealthCardNumber() << endl;

    float cervixDilation;
    cout << "Enter Cervix Dilation: ";
    cin >> cervixDilation;
    patient->setCervixDilation(cervixDilation);

    if (patient->getCervixDilation() >= 4.0) {
        patient->setCondition(ADMIT);
        cout << ".. [Admitting]" << endl;
        printPatient(patient);
        delete patient;
    }
    else {
        patient->setCondition(LABOUR);
        cout << ".. [Going back to queue]" << endl;
        queue.push_back(patient);
    }
    cout << endl;

    return true;
}

void OTPRegister::printPatient(Patient* patient) {
    cout << left << setw(10) << patient->getName()
        << setw(10) << patient->getHealthCardNumber()
        << setw(5) << patient->getCervixDilation()
        << setw(10);
    if (patient->getCondition() == UNKNOWN) cout << "UNKNOWN";
    else if (patient->getCondition() == LABOUR) cout << "LABOUR";
    else if (patient->getCondition() == ADMIT) cout << "ADMIT";
    cout << endl;
}

int OTPRegister::patientAmount() {
    return queue.size();
}

void OTPRegister::displayRegister() {
    int qSize = queue.size();
    for (int i = 0; i < qSize; ++i) {
        printPatient(queue[i]);
    }
    cout << endl;
}
