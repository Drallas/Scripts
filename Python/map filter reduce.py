# The store contains a list of items (name, price in dollars)
store = [
    ("shirt", 20.00),  # 'shirt' costs 20.00 dollars
    ("pants", 25.00),  # 'pants' costs 25.00 dollars
    ("jacket", 50.00),  # 'jacket' costs 50.00 dollars
    ("Apple", 50.00)   # 
]

# 'to_euros' is a lambda function that takes a store item (name, price)
# and returns the name and the price converted to euros (price * 0.82)
to_euros = lambda data: (data[0], data[1] * 0.82)

# 'map' applies the 'to_euros' function to each item in 'store',
# converting all the prices from dollars to euros.
# 'list()' collects the mapped results into a new list called 'euro_price'
euro_price = list(map(to_euros, store))

# Loop through each item in the 'euro_price' list and print it.
for item in euro_price:
    print(item)
    # Example output:
    # ('shirt', 16.4)  -> The shirt's price in euros
    # ('pants', 20.5)  -> The pants' price in euros
    # ('jacket', 41.0) -> The jacket's price in euros