# System Monitoring Script

## Description

This project is a Bash shell script that monitors system resources such as disk usage, memory usage, and CPU-intensive processes. It alerts the user when predefined thresholds are exceeded.

## Features

- Monitor disk usage
- Monitor memory usage
- Display top CPU-consuming processes
- Print warning messages
- Log alerts to monitor.log

## Requirements

- Linux Operating System
- Bash Shell

## Thresholds

- Disk Usage Threshold: 80%
- Memory Usage Threshold: 75%

## How to Run

Give execute permission:

```bash
chmod +x system_monitor.sh
```

Run the script:

```bash
./system_monitor.sh
```

## Sample Output

=====================================
System Monitoring Report
=====================================

Disk Usage: 45%
Disk usage is normal.

Memory Usage: 62%
Memory usage is normal.

Top CPU-consuming processes

PID COMMAND %CPU
1234 java 35.2
4567 chrome 18.1
7890 python 10.3

## Log File

Alerts are stored in:

monitor.log

## Project Structure

system-monitoring-script/
├── system_monitor.sh
├── monitor.log
└── README.md
