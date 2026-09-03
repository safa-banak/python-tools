filename = input("Enter file name: ")
try:
    with open(filename, "r") as f:
        lines = f.readlines()
    word_count = sum(len(line.split()) for line in lines)
    print(f"File has {len(lines)} lines and {word_count} words.")
except FileNotFoundError:
    print("File not found. Please check the name.")
