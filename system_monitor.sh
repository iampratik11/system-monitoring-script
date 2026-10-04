#!/bin/bash

LOG_FILE="$HOME/sys_health.log"
REPORT="/tmp/sys_health_report.txt"

# Change this to your email
EMAIL="waghpratik00@gmail.com"

check_disk_usage() {
    echo "Checking disk usage..."
    df -h
}

monitor_services() {
    echo "Monitoring running services..."
    systemctl list-units --type=service --state=running
}

check_memory_usage() {
    echo "Checking memory usage..."
    free -m
}

check_cpu_usage() {
    echo "Checking CPU usage..."
    top -bn1 | grep "Cpu"
}

send_report() {

    echo "Generating system health report..."

    {
        echo "=================================="
        echo "      System Health Report"
        echo "=================================="
        echo "Generated on: $(date)"

        echo
        echo "Disk Usage"
        df -h

        echo
        echo "Running Services"
        systemctl list-units --type=service --state=running

        echo
        echo "Memory Usage"
        free -m

        echo
        echo "CPU Usage"
        top -bn1 | grep "Cpu"

    } > "$REPORT"

    if [ ! -f "$REPORT" ]; then
        echo "Failed to create report."
        return
    fi

    echo "Sending email..."

    mailx -s "System Health Report" "$EMAIL" < "$REPORT"

    if [ $? -eq 0 ]; then
        echo "Report sent successfully to $EMAIL"
    else
        echo "Failed to send email."
    fi

    cat "$REPORT" >> "$LOG_FILE"
}
while true
do
    clear

    echo "============================="
    echo " System Health Check Menu"
    echo "============================="
    echo "1. Check Disk Usage"
    echo "2. Monitor Running Services"
    echo "3. Assess Memory Usage"
    echo "4. Evaluate CPU Usage"
    echo "5. Send Comprehensive Report"
    echo "6. Exit"

    echo
    read -p "Enter your choice: " choice

    case $choice in
        1) check_disk_usage ;;
        2) monitor_services ;;
        3) check_memory_usage ;;
        4) check_cpu_usage ;;
        5) send_report ;;
        6) exit 0 ;;
        *) echo "Invalid option." ;;
    esac

    echo
    read -p "Press Enter to continue..."
done
