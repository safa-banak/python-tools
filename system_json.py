import subprocess
import json
from datetime import datetime

def run(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout.strip()

report = {
    "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
    "disk": run("df -h /"),
    "memory": run("free -h"),
    "uptime": run("uptime -p")
}

with open("system_report.json", "w") as f:
    json.dump(report, f, indent=4)

print(json.dumps(report, indent=4))
