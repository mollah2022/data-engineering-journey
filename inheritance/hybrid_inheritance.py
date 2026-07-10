class Person:

    def info(self):
        print("Basic Person Information")


class Doctor(Person):

    def prescribe(self):
        print("Medicine Prescribed")


class Patient(Person):

    def medical_history(self):
        print("Medical History")


class SurgeonPatient(Doctor, Patient):

    def surgery(self):
        print("Surgery Completed")


obj = SurgeonPatient()

obj.info()
obj.prescribe()
obj.medical_history()
obj.surgery()