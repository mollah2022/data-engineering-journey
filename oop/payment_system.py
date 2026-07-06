# ======================================
# Parent Class
# ======================================

class Payment:

    def pay(self, amount):
        print("Processing payment...")


# ======================================
# Child Class: Credit Card
# ======================================

class CreditCard(Payment):

    # Method Overriding
    def pay(self, amount):
        print(f"Paid ${amount} using Credit Card.")


# ======================================
# Child Class: PayPal
# ======================================

class PayPal(Payment):

    # Method Overriding
    def pay(self, amount):
        print(f"Paid ${amount} using PayPal.")


# ======================================
# Child Class: Bank Transfer
# ======================================

class BankTransfer(Payment):

    # Method Overriding
    def pay(self, amount):
        print(f"Paid ${amount} using Bank Transfer.")


# ======================================
# Objects
# ======================================

payments = [
    CreditCard(),
    PayPal(),
    BankTransfer()
]

# ======================================
# Polymorphism
# ======================================

for payment in payments:
    payment.pay(1000)