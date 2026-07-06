# Outer function
def bonus_calculator(rate):

    # Inner function
    def calculate(salary):

        # Calculate bonus using the saved rate
        return salary * rate

    # Return the inner function
    return calculate


# Create a bonus calculator with 20% bonus rate
bonus20 = bonus_calculator(0.20)

# Create another bonus calculator with 10% bonus rate
bonus10 = bonus_calculator(0.10)


# Calculate bonus
print(bonus20(50000))
print(bonus20(80000))

print(bonus10(50000))