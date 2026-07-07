from functools import singledispatchmethod

class Printer:

    @singledispatchmethod
    def show(self, value):
        print(value)

    @show.register
    def _(self, value: int):
        print("Integer:", value)


p = Printer()

p.show("Hello")
p.show(100)