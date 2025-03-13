import time
"""
Decorators are functions that can be attached to existing functions, to give them addition functionality.

usage cases:
- Timers
- Logon Checks
- Loggin stuf
- ?
"""


def timer(func):

    def wrapper(*args):
        before = time.time()
        func(*args)
        print("From the timer Decorator")
        print(f"function took: {round(time.time() - before, 4)} seconds ")

    return wrapper


def my_decorator(func):

    def wrapper(*args):
        print("From the Decorator Function")
        return func(*args)

    return wrapper


@timer
@my_decorator
def my_function(str1, str2):
    time.sleep(1)
    print("From the main Function")
    print(str1 + " are " + str2)


"The Main Loop"
if __name__ == '__main__':
    my_function("Mangoes", "Sweet")
