# ======================================
# Parent Class: Employee
# ======================================

class Employee:

    # Class variable shared by all employee objects
    company = "Meta"

    # Constructor: Called automatically when an object is created
    def __init__(self, emp_id, name, salary):

        # Public instance attributes
        self.emp_id = emp_id
        self.name = name

        # Private instance attribute (Encapsulation)
        self.__salary = salary

    # Return the employee's salary
    def get_salary(self):
        return self.__salary

    # Increase the employee's salary
    def increase_salary(self, amount):
        self.__salary += amount

    # Display common employee information
    def show_info(self):
        print("=" * 40)
        print(f"Company : {Employee.company}")
        print(f"ID      : {self.emp_id}")
        print(f"Name    : {self.name}")
        print(f"Salary  : {self.__salary}")

    # Generic work behavior (can be overridden by child classes)
    def work(self):
        print(f"{self.name} is working...")


# ======================================
# Child Class: Software Engineer
# ======================================

# Inherits all properties and methods from Employee
class SoftwareEngineer(Employee):

    def __init__(self, emp_id, name, salary, language):

        # Call the parent constructor
        super().__init__(emp_id, name, salary)

        # Child-specific attribute
        self.language = language

    # Override the parent's work() method
    def work(self):
        print(f"{self.name} is writing {self.language} code.")

    # Extend the parent's show_info() method
    def show_info(self):
        super().show_info()
        print(f"Language: {self.language}")


# ======================================
# Child Class: Data Engineer
# ======================================

class DataEngineer(Employee):

    def __init__(self, emp_id, name, salary, database):

        # Initialize common employee attributes
        super().__init__(emp_id, name, salary)

        # Child-specific attribute
        self.database = database

    # Override the parent's work() method
    def work(self):
        print(f"{self.name} builds ETL pipelines using {self.database}.")

    # Extend the parent's show_info() method
    def show_info(self):
        super().show_info()
        print(f"Database: {self.database}")


# ======================================
# Child Class: Manager
# ======================================

class Manager(Employee):

    def __init__(self, emp_id, name, salary, team_size):

        # Initialize common employee attributes
        super().__init__(emp_id, name, salary)

        # Child-specific attribute
        self.team_size = team_size

    # Override the parent's work() method
    def work(self):
        print(f"{self.name} manages a team of {self.team_size} employees.")

    # Extend the parent's show_info() method
    def show_info(self):
        super().show_info()
        print(f"Team Size: {self.team_size}")


# ======================================
# Create Objects
# ======================================

# Create a Software Engineer object
se = SoftwareEngineer(
    101,
    "Sajib",
    90000,
    "Python"
)

# Create a Data Engineer object
de = DataEngineer(
    102,
    "Ria",
    85000,
    "PostgreSQL"
)

# Create a Manager object
manager = Manager(
    103,
    "Rahim",
    120000,
    15
)


# ======================================
# Execute Methods
# ======================================

# Display software engineer details
se.show_info()

# Execute the overridden work() method
se.work()

print()

# Display data engineer details
de.show_info()

# Execute the overridden work() method
de.work()

print()

# Display manager details
manager.show_info()

# Execute the overridden work() method
manager.work()