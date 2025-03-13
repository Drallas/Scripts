"""
Higher order functions are:

Functions that return other functions, 
Functions that receive other functions as arguments

"""


def prepare_hello(name: str):
    """Return a function say_hello"""

    def say_hello():
        print("Hello, {}!".format(name))

    return say_hello


hello_brian = prepare_hello("Brian")
# print(hello_brian)
hello_brian()
