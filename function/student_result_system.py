# Function to calculate student result
def calculate_result(name, marks):

    # Check if the student has passed
    if marks >= 40:
        return f"{name} Passed"

    # Return failed result
    return f"{name} Failed"


# Call the function
result1 = calculate_result("Sajib", 80)
result2 = calculate_result("Ria", 35)

# Print the results
print(result1)
print(result2)