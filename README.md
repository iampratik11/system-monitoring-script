# 🖥️ System Monitoring Script

A Bash shell script that monitors key system resources and alerts the user when predefined thresholds are exceeded. This project demonstrates basic Linux monitoring and operational automation commonly used by DevOps engineers.

---

## 📌 Features

- ✅ Monitor Disk Usage
- ✅ Monitor Memory Usage
- ✅ Display Top CPU-Consuming Processes
- ✅ Generate Warning Alerts
- ✅ Log Alerts to `monitor.log`


---

## 🛠️ Technologies Used

- Linux (Fedora)
- Bash Shell Scripting
- Git
- GitHub

---

## 📋 Prerequisites

- Linux Operating System
- Bash Shell
- Git

---

## ⚙️ Threshold Configuration

| Resource | Threshold |
|----------|-----------|
| Disk Usage | 80% |
| Memory Usage | 75% |

---

## 🚀 How to Run

Clone the repository:

```bash
git clone https://github.com/Pratikwagh99/system-monitoring-script.git
```

Navigate to the project folder:

```bash
cd system-monitoring-script
```

Give execute permission:

```bash
chmod +x system_monitor.sh
```

Run the script:

```bash
./system_monitor.sh
```

---

## 📊 Sample Output

```text
=====================================
      System Monitoring Report
=====================================

Disk Usage: 45%
Disk usage is normal.

Memory Usage: 62%
Memory usage is normal.

Top CPU-Consuming Processes

PID     COMMAND     %CPU
1234    java        35.2
4567    chrome      18.1
7890    python      10.3
```

---

## 📝 Log File

Whenever the disk or memory usage exceeds the configured threshold, an alert is appended to **monitor.log**.

Example:

```text
Tue Jul 08 10:15:20 IST 2025: WARNING - Disk usage is 85%
Tue Jul 08 10:15:20 IST 2025: WARNING - Memory usage is 78%
```

---

## 📁 Project Structure

```text
system-monitoring-script/
│
├── system_monitor.sh
├── monitor.log
└── README.md
```

---

## 📚 Linux Commands Used

| Command | Purpose |
|---------|---------|
| `df` | Check disk usage |
| `free` | Check memory usage |
| `ps` | Display running processes |
| `awk` | Process command output |
| `sed` | Format text |
| `echo` | Print messages |
| `date` | Generate timestamps |

---

## 🔄 Git Commit History

This project was developed using multiple meaningful Git commits, including:

- Initial project setup
- Add disk monitoring
- Add memory monitoring
- Add CPU monitoring
- Add alert logging
- Add project documentation

---

## 🎯 Learning Outcomes

This project helped me learn:

- Bash Shell Scripting
- Linux System Monitoring
- Process Management
- Automation using Shell Scripts
- Git Version Control
- GitHub Repository Management
- Technical Documentation

---

## 👨‍💻 Author

**Pratik Wagh**
