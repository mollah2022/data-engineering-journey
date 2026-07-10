from typing import override

class Animal:

    def sound(self):
        pass


class Dog(Animal):

    @override
    def sound(self):
        print("Bark")