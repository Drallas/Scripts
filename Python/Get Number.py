# Get a number from user
def get_int(prompt):
    attempts = 0
    while attempts < 3:
        try:
            number = int(input(prompt))
            return number
        except ValueError:
            attempts += 1
            print("Invalid input. Try again.")
    raise ValueError("Too many invalid attempts.")


# define x and y on one line and assign value to result get_int
try:
    x, y = get_int("Enter a number: "), get_int("Enter another number: ")
    print("The result is :")
    print(f"{x} + {y} = {x + y}")
except ValueError as e:
    print(e)
