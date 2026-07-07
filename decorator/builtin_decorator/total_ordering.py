from functools import total_ordering

@total_ordering
class Student:
    def __init__(self, marks):
        self.marks = marks

    def __eq__(self, other):
        return self.marks == other.marks

    def __lt__(self, other):
        return self.marks < other.marks


s1 = Student(80)
s2 = Student(90)

print(s1 < s2)   # True
print(s1 > s2)   # False
print(s1 >= s2)  # False
print(s1 <= s2)  # True
print(s1 == s2)  # False
print(s1 != s2)  # True