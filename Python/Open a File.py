try:
    with open('filetocheck.log') as file:
        read_data = file.read()
        print(read_data)
except FileNotFoundError as open_file_error:
    print(open_file_error)