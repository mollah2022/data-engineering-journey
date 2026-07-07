class Product:

    def __init__(self, name:str, price:float):
        self.name = name
        self.price = price

    def show(self):
        print(self.name, self.price)


class Book(Product):

    def read(self):
        print("Reading Book")


class Phone(Product):

    def call(self):
        print("Calling")


class Laptop(Product):

    def code(self):
        print("Coding")


book = Book("Python Book", 700)

phone = Phone("iPhone", 120000)

laptop = Laptop("MacBook", 250000)

book.show()
phone.show()
laptop.show()