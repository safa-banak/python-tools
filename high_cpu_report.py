import csv
input_file = input("Enter CSV file name: ")
output_file = input("Enter output report file name: ")
try:
    with open(input_file, newline="") as f:
        reader = csv.reader(f)
        header = next(reader)
        high_load_servers = []
        for row in reader:
            cpu = int(row[2])  # convert CPU percentage to integer
            if cpu > 80:
                high_load_servers.append(row)
    with open(output_file, "w") as f:
        f.write("Servers with CPU > 80%\n")
        f.write("=" * 40 + "\n")
        for row in high_load_servers:
            f.write(f"Server: {row[0]}, IP: {row[1]}, CPU: {row[2]}%\n")
    print(f"Report saved to {output_file}")
except FileNotFoundError:
    print("Input file not found.")
