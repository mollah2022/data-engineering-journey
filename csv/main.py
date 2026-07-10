import csv
import os


FILE_NAME = "students.csv"


# Create CSV file if not exists
if not os.path.exists(FILE_NAME):
    with open(FILE_NAME, "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerow(["id", "name", "age", "department"])



# Add student
def add_student():

    student_id = input("Enter ID: ")
    name = input("Enter Name: ")
    age = input("Enter Age: ")
    department = input("Enter Department: ")


    with open(FILE_NAME, "a", newline="") as file:

        writer = csv.writer(file)

        writer.writerow([
            student_id,
            name,
            age,
            department
        ])

    print("Student Added Successfully!")



# Show all students
def show_students():

    with open(FILE_NAME, "r") as file:

        reader = csv.DictReader(file)

        for student in reader:

            print(
                f"ID: {student['id']}, "
                f"Name: {student['name']}, "
                f"Age: {student['age']}, "
                f"Department: {student['department']}"
            )



# Search student
def search_student():

    search_id = input("Enter Student ID: ")


    with open(FILE_NAME, "r") as file:

        reader = csv.DictReader(file)

        found = False

        for student in reader:

            if student["id"] == search_id:

                print("Student Found:")
                print(student)

                found = True
                break


        if not found:
            print("Student Not Found!")



# Main Menu

while True:

    print("\n--- Student Management System ---")
    print("1. Add Student")
    print("2. Show Students")
    print("3. Search Student")
    print("4. Exit")


    choice = input("Choose option: ")


    if choice == "1":
        add_student()

    elif choice == "2":
        show_students()

    elif choice == "3":
        search_student()

    elif choice == "4":
        print("Program Closed")
        break

    else:
        print("Invalid Choice!")