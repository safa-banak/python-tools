pwd
ls
whoami
pwd
mkdir linux-lab
pwd
ls
cd linux-lab
touch file1.txt file2.txt
ls
cp file1.txt file1_copy.txt
ls
ls -1
ls -l
chmod +x file1.txt
ls -l file1.txt
sudo apt update
sudo apt install curl -y
curl https://example.com
python3 --version
pwd
cd ~/linux-lab
nano hello.py
echo 'print("Hello from Python inside Linux!")' > hello.py
echo 'name = input("What is your name? ")' >> hello.py
echo 'print(f"Nice to meet you, {name}!")' >> hello.py
cat hello.py
python3 hello.py
nano
myfile
python 3 myfile
nano
python myfile.py
python3 myfile.py
زمق
clr
clear
echo 'filename = input("Enter file name: ")' > word_counter.py
echo 'try:' >> word_counter.py
echo '    with open(filename, "r") as f:' >> word_counter.py
echo '        lines = f.readlines()' >> word_counter.py
echo '    word_count = sum(len(line.split()) for line in lines)' >> word_counter.py
echo '    print(f"File has {len(lines)} lines and {word_count} words.")' >> word_counter.py
echo 'except FileNotFoundError:' >> word_counter.py
echo '    print("File not found. Please check the name.")' >> word_counter.py
echo 'Hello world' > sample.txt
echo 'Python is great' >> sample.txt
echo 'Linux is powerful' >> sample.txt
python3 word_counter.py
cat word_country.py
cat word_counter.py
sed -i '$ d' word_counter.py
cat word_counter.py
python3 word_counter.py
clear
echo 'name,ip,cpu,ram' > servers.cvs
echo 'web01,192.168.1.10,45,4000'>> servers.cvs
echo 'db01,192.168.1.20,70,8000'>>servers.csv
echo 'cache01,192.168.1.30,90,16000'>>servers.csv
cat servers.csv
rm servers.cvs servers.csv
ls
echo 'name,ip,cpu,ram' > servers.csv
echo 'web01,192.168.1.10,45,4000' >> servers.csv
echo 'db01,192.168.1.20,70,8000' >> servers.csv
echo 'cache01,192.168.1.30,90,16000' >> servers.csv
cat servers.csv
echo 'import csv'>read_servers.py
echo 'filename = input("Enter csv file name: ")'>>read_servers.py
echo 'try:' >> read_servers.py
echo '    with open(filename, newline="") as f:' >> read_servers.py
echo '        reader = csv.reader(f)' >> read_servers.py
echo '        header = next(reader)  # first line is header' >> read_servers.py
echo '        print("Headers:", header)' >> read_servers.py
echo '        print("-" * 40)' >> read_servers.py
echo '        for row in reader:' >> read_servers.py
echo '            print(f"Server: {row[0]}, IP: {row[1]}, CPU: {row[2]}%, RAM: {row[3]} MB")' >> read_servers.py
echo 'except FileNotFoundError:' >> read_servers.py
echo '    print("File not found. Please check the name.")' >> read_servers.py
python3 read_servers.csv
ls
python3 read_servers.py
cat read_servers.py
cat servers.csv
echo 'import csv' > high_cpu_report.py
echo 'input_file = input("Enter CSV file name: ")' >> high_cpu_report.py
echo 'output_file = input("Enter output report file name: ")' >> high_cpu_report.py
echo 'try:' >> high_cpu_report.py
echo '    with open(input_file, newline="") as f:' >> high_cpu_report.py
echo '        reader = csv.reader(f)' >> high_cpu_report.py
echo '        header = next(reader)' >> high_cpu_report.py
echo '        high_load_servers = []' >> high_cpu_report.py
echo '        for row in reader:' >> high_cpu_report.py
echo '            cpu = int(row[2])  # convert CPU percentage to integer' >> high_cpu_report.py
echo '            if cpu > 80:' >> high_cpu_report.py
echo '                high_load_servers.append(row)' >> high_cpu_report.py
echo '    with open(output_file, "w") as f:' >> high_cpu_report.py
echo '        f.write("Servers with CPU > 80%\\n")' >> high_cpu_report.py
echo '        f.write("=" * 40 + "\\n")' >> high_cpu_report.py
echo '        for row in high_load_servers:' >> high_cpu_report.py
echo '            f.write(f"Server: {row[0]}, IP: {row[1]}, CPU: {row[2]}%\\n")' >> high_cpu_report.py
echo '    print(f"Report saved to {output_file}")' >> high_cpu_report.py
echo 'except FileNotFoundError:' >> high_cpu_report.py
echo '    print("Input file not found.")' >> high_cpu_report.py
python3 high_cpu_report.py
cat high_cpu_report.txt
ls
rm high_cpu_report.py
ls
rm high_cpu_report.txt
ls
echo 'import csv' > high_cpu_report.py
echo 'input_file = input("Enter CSV file name: ")' >> high_cpu_report.py
echo 'output_file = input("Enter output report file name: ")' >> high_cpu_report.py
echo 'try:' >> high_cpu_report.py
echo '    with open(input_file, newline="") as f:' >> high_cpu_report.py
echo '        reader = csv.reader(f)' >> high_cpu_report.py
echo '        header = next(reader)' >> high_cpu_report.py
echo '        high_load_servers = []' >> high_cpu_report.py
echo '        for row in reader:' >> high_cpu_report.py
echo '            cpu = int(row[2])  # convert CPU percentage to integer' >> high_cpu_report.py
echo '            if cpu > 80:' >> high_cpu_report.py
echo '                high_load_servers.append(row)' >> high_cpu_report.py
echo '    with open(output_file, "w") as f:' >> high_cpu_report.py
echo '        f.write("Servers with CPU > 80%\n")' >> high_cpu_report.py
echo '        f.write("=" * 40 + "\n")' >> high_cpu_report.py
echo '        for row in high_load_servers:' >> high_cpu_report.py
echo '            f.write(f"Server: {row[0]}, IP: {row[1]}, CPU: {row[2]}%\n")' >> high_cpu_report.py
echo '    print(f"Report saved to {output_file}")' >> high_cpu_report.py
echo 'except FileNotFoundError:' >> high_cpu_report.py
echo '    print("Input file not found.")' >> high_cpu_report.py
python3 high_cpu_report.py
ls
cat myFile.txt
clr l
clear
echo 'import subprocess' > sysinfo.py
echo 'import csv' >> sysinfo.py
echo 'from datetime import datetime' >> sysinfo.py
echo '' >> sysinfo.py
echo 'def run_command(cmd):' >> sysinfo.py
echo '    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)' >> sysinfo.py
echo '    return result.stdout.strip()' >> sysinfo.py
echo '' >> sysinfo.py
echo 'disk = run_command("df -h /")' >> sysinfo.py
echo 'memory = run_command("free -h")' >> sysinfo.py
echo 'uptime_info = run_command("uptime -p")' >> sysinfo.py
echo '' >> sysinfo.py
echo 'timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")' >> sysinfo.py
echo '' >> sysinfo.py
echo 'with open("system_report.csv", "w", newline="") as f:' >> sysinfo.py
echo '    writer = csv.writer(f)' >> sysinfo.py
echo '    writer.writerow(["timestamp", "disk_info", "memory_info", "uptime"])' >> sysinfo.py
echo '    writer.writerow([timestamp, disk, memory, uptime_info])' >> sysinfo.py
echo '' >> sysinfo.py
echo 'print(f"Report saved at {timestamp}")' >> sysinfo.py
echo 'print("Disk Info:", disk)' >> sysinfo.py
echo 'print("Memory Info:", memory)' >> sysinfo.py
echo 'print("Uptime:", uptime_info)' >> sysinfo.py
python3 sysinfo.py
cat system_report.csv
