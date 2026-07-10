import time

def calculate_runtime(func):
    def wrapper(*args, **kwargs):
        start_time = time.perf_counter()

        result = func(*args, **kwargs)

        end_time = time.perf_counter()

        print(f"Function Name : {func.__name__}")
        print(f"Execution Time: {end_time - start_time:.6f} seconds")

        print("Result:", result)

    return wrapper

# Decorated function without parameters
@calculate_runtime
def add_numbers():
    total = 0
    for i in range(10_000_000):
        total += i
    return total


add_numbers()
# add_number = calculate_runtime(add_numbers)
# add_number()

# Decorated function with positional parameters
@calculate_runtime
def add(a, b):
    return a + b

add(10, 20)
# add = calculate_runtime(add)
# add(10, 20)

# Decorated function with keyword arguments
@calculate_runtime
def student(name, age):
    print(f"Name: {name}")
    print(f"Age: {age}")


student(name="Sajib", age=23)
# student = calculate_runtime(student)
# student(name="Sajib", age=23)