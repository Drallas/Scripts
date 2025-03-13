klinkers = ["a", "e", "i", "o", "u"]
woord = "eoilandi"

for letter in woord:
  if letter in klinkers:
    print(woord.index(letter), end=" ")
    print((letter), end=" ")

print("\n")

for letter in woord:
  if letter not in klinkers:
    print(woord.index(letter), end=" ")
    print((letter), end=" ")