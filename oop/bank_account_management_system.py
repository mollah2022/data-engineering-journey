# ======================================
# Bank Account Class
# Demonstrates Encapsulation
# ======================================

class BankAccount:

    # Constructor
    def __init__(self, account_number, holder_name, balance):

        # Public attributes
        self.account_number = account_number
        self.holder_name = holder_name

        # Private attribute
        self.__balance = balance

    # Return the current balance
    def get_balance(self):
        return self.__balance

    # Deposit money into the account
    def deposit(self, amount):

        if amount > 0:
            self.__balance += amount
            print(f"${amount} deposited successfully.")
        else:
            print("Invalid deposit amount.")

    # Withdraw money from the account
    def withdraw(self, amount):

        if amount <= 0:
            print("Invalid withdrawal amount.")

        elif amount > self.__balance:
            print("Insufficient balance.")

        else:
            self.__balance -= amount
            print(f"${amount} withdrawn successfully.")

    # Update balance manually with validation
    def set_balance(self, new_balance):

        if new_balance >= 0:
            self.__balance = new_balance
        else:
            print("Balance cannot be negative.")

    # Display account details
    def show_info(self):

        print("=" * 40)
        print(f"Account Number : {self.account_number}")
        print(f"Account Holder : {self.holder_name}")
        print(f"Current Balance: ${self.__balance}")
        print("=" * 40)


# ======================================
# Create Object
# ======================================

account = BankAccount(
    "1001",
    "Sajib Ahmed",
    5000
)

# ======================================
# Test
# ======================================

account.show_info()

account.deposit(2000)

account.withdraw(1000)

print("Current Balance:", account.get_balance())

account.set_balance(10000)

account.show_info()