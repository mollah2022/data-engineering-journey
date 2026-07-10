from functools import cached_property

class Data:

    @cached_property
    def total(self):
        print("Calculating...")
        return 100


d = Data()

print(d.total)
print(d.total)