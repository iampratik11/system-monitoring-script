#!/bin/bash

echo "====================================="
echo "      System Monitoring Report"
echo "====================================="

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo ""
echo "Disk Usage: ${DISK_USAGE}%"

DISK_THRESHOLD=80

if [ "$DISK_USAGE" -ge "$DISK_THRESHOLD" ]
then
    echo "WARNING: Disk usage is above ${DISK_THRESHOLD}%"
else
    echo "Disk usage is normal."
fi



MEMORY_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2*100}')

echo ""
echo "Memory Usage: ${MEMORY_USAGE}%"


