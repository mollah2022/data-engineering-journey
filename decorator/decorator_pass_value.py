import time

def runtime(func):
    def wrapper(*args, **kwargs):

        start = time.time()

        result = func(*args, **kwargs)


        end = time.time()

        print(f"Runtime: {end - start:.5f} seconds")

        # Pass the function output to another function
        return print_result(result)

    return wrapper


def print_result(data):
    # Display the function output
    print(f"Output: {data}")



@runtime
def add(a, b):
    return a + b


add(10, 20)