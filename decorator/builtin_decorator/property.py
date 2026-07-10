class Employee:
    def __init__(self, salary):
        self._salary = salary

    @property
    def salary(self):
        return self._salary


emp = Employee(50000)

print(emp.salary)      
# print(emp.salary())  