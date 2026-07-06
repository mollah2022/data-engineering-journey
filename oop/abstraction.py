from abc import ABC, abstractmethod


# ======================================
# Abstract Class
# ======================================

class Payment(ABC):

    @abstractmethod
    def pay(self, amount):
        pass


# ======================================
# Child Class
# ======================================

class CreditCard(Payment):

    def pay(self, amount):
        print(f"Paid ${amount} using Credit Card.")


# ======================================
# Child Class
# ======================================

class PayPal(Payment):

    def pay(self, amount):
        print(f"Paid ${amount} using PayPal.")


# ======================================
# Objects
# ======================================

credit = CreditCard()
paypal = PayPal()

credit.pay(1000)
paypal.pay(500)