import csv


def read_csv():
    '''use the csv library to read the content.'''
    with open("input/data.csv", "r") as data_file:
        data = csv.reader(data_file)
        stuff = []
        for row in data:
            if row[1] != "header_name":
                stuff.append((row[1]))
        return stuff
