class User:

    def login(self):
        print("User Login")


class Employee(User):

    def submit_attendance(self):
        print("Attendance Submitted")


class Manager(Employee):

    def approve_leave(self):
        print("Leave Approved")


manager = Manager()

manager.login()
manager.submit_attendance()
manager.approve_leave()