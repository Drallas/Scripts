from database import database
from dog_class import Dog
from secrets import secrets

dog_names_list = [
    "Max", "Charlie", "Buddy", "Jack", "Rocky", "Bailey", "Bella", "Lucy",
    "Daisy", "Molly", "Cracker"
]


# Create a list of Dog objects
dogs = [Dog(name) for name in dog_names_list]

# Call the say_hello method for each dog
for dog in dogs:
    dog.say_hello()

# print a newline
print()

# Call the database function
database()
# print a newline
print()

# Call the secrets function
secrets()
# print a newline
print()
