class Employee:
    company = "Google"

    @classmethod
    def change_company(cls, name):
        cls.company = name


Employee.change_company("Microsoft")

print(Employee.company)