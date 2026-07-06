# Decorator function
def login_required(func):

    # Wrapper function
    def wrapper():

        # Code before calling the original function
        print("Checking login...")

        # Call the original function
        func()

        # Code after calling the original function
        print("Request completed.")

    # Return the wrapper function
    return wrapper


# Apply the decorator
@login_required
def profile():

    # Original function
    print("Welcome Sajib")


# Call the decorated function
profile()