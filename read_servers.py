import csv
filename = input("Enter csv file name: ")
try:
    with open(filename, newline="") as f:
        reader = csv.reader(f)
        header = next(reader)  # first line is header
        print("Headers:", header)
        print("-" * 40)
        for row in reader:
            print(f"Server: {row[0]}, IP: {row[1]}, CPU: {row[2]}%, RAM: {row[3]} MB")
except FileNotFoundError:
    print("File not found. Please check the name.")
