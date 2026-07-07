#!/bin/bash

echo "====================================="
echo "      System Monitoring Report"
echo "====================================="

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo ""
echo "Disk Usage: ${DISK_USAGE}%"


