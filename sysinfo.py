import subprocess
import csv
from datetime import datetime

def run_command(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result.stdout.strip()

disk = run_command("df -h /")
memory = run_command("free -h")
uptime_info = run_command("uptime -p")

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

with open("system_report.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["timestamp", "disk_info", "memory_info", "uptime"])
    writer.writerow([timestamp, disk, memory, uptime_info])

print(f"Report saved at {timestamp}")
print("Disk Info:", disk)
print("Memory Info:", memory)
print("Uptime:", uptime_info)
