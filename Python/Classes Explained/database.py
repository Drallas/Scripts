def database():
    # playing with the repl.it database

    from replit import db

    db["key1"] = "value1"

    data = {
        "key1": "value2",
        "float_1": 9.99,
        "int_1": 1,
    }

    for key, value in data.items():
        if key not in db:
            db[key] = value
        else:
            print(f"Key {key} already in the database.")

    # update the value of a key
    db["key1"] = "value3"

    # Print all keys in the database
    for key in db:
        print(f"Key: {key}, Value: {db[key]}")

    # Delete all keys in the database
    for key in db:
        del db[key]
        print(f"Value {key} deleted successfully.")

    # del db["float_1"]
    # if "float_1" not in db:
    #     print("Value deleted successfully.")