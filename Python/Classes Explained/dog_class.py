"""
This module contains a simple "Hello, World!" function using a Dog class.
"""

class Dog:
    """Dog Class"""

    def __init__(self, name):
        self.name = name

    def say_hello(self):
        """Print Hello World Class"""
        print(f"Hello World, my name is {self.name}!")
