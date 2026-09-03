def analyze_log():
    input_file = input("Enter log file name: ")
    output_file = input("Enter report file name: ")
    error_count = 0
    try:
        with open(input_file, "r") as f:
            lines = f.readlines()
        with open(output_file, "w") as f:
            f.write("Error Report\n")
            f.write("=" * 40 + "\n")
            for line in lines:
                if "ERROR" in line:
                    f.write(line)
                    error_count += 1
        print(f"Found {error_count} errors. Report saved to {output_file}")
    except FileNotFoundError:
        print("Input file not found.")

analyze_log()
