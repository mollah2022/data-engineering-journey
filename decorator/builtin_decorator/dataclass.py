from dataclasses import dataclass

@dataclass
class Employee:
    id: int
    name: str


emp = Employee(1, "Sajib")

print(emp)