#!/bin/bash


#!/bin/bash

# Variables
LOG_FILE="/home/samir/Desktop/logfile/monitor.sh"

# Get current date and time
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Get CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

# Get memory usage
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')

# Get disk usage
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}')

# Log the results
echo "$DATE" >> "$LOG_FILE"
echo "CPU Usage: $CPU_USAGE%" >> "$LOG_FILE"
echo "$MEMORY_USAGE" >> "$LOG_FILE"
echo "$DISK_USAGE" >> "$LOG_FILE"
echo "---------------------------------------" >> "$LOG_FILE"

