import json
import os

FILE_NAME = "students.json"


# Create file if it doesn't exist
if not os.path.exists(FILE_NAME):
    with open(FILE_NAME, "w") as file:
        json.dump([], file, indent=4)


# Read all students
def load_students():
    with open(FILE_NAME, "r") as file:
        return json.load(file)


# Save students
def save_students(students):
    with open(FILE_NAME, "w") as file:
        json.dump(students, file, indent=4)


# Add student
def add_student():
    students = load_students()

    student = {
        "id": int(input("Enter ID: ")),
        "name": input("Enter Name: "),
        "department": input("Enter Department: "),
        "cgpa": float(input("Enter CGPA: "))
    }

    students.append(student)
    save_students(students)

    print("\nStudent Added Successfully!\n")


# View students
def view_students():
    students = load_students()

    if len(students) == 0:
        print("\nNo Student Found.\n")
        return

    print("\n------ Student List ------")

    for student in students:
        print(f"""
ID         : {student["id"]}
Name       : {student["name"]}
Department : {student["department"]}
CGPA       : {student["cgpa"]}
---------------------------
""")


# Search student
def search_student():
    student_id = int(input("Enter Student ID: "))

    students = load_students()

    for student in students:
        if student["id"] == student_id:
            print("\nStudent Found\n")
            print(student)
            return

    print("\nStudent Not Found.\n")


# Main Menu
while True:

    print("""
========== Student Management ==========
1. Add Student
2. View Students
3. Search Student
4. Exit
""")

    choice = input("Enter Choice: ")

    if choice == "1":
        add_student()

    elif choice == "2":
        view_students()

    elif choice == "3":
        search_student()

    elif choice == "4":
        print("Good Bye!")
        break

    else:
        print("Invalid Choice\n")