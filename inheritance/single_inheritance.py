class Employee:
    def __init__(self, emp_id:int, name:str, salary:float):
        self.emp_id = emp_id
        self.name = name
        self.salary = salary

    def employee_info(self):
        print(f"ID: {self.emp_id}")
        print(f"Name: {self.name}")
        print(f"Salary: {self.salary}")


class SoftwareEngineer(Employee):

    def __init__(self, emp_id:int, name:str, salary:float, programming_language:str):
        super().__init__(emp_id, name, salary)
        self.programming_language = programming_language

    def code(self):
        print(f"{self.name} writes {self.programming_language} code")


engineer = SoftwareEngineer(
    101,
    "Sajib",
    90000,
    "Python"
)

engineer.employee_info()
engineer.code()