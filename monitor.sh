#!/bin/bash

LOG_FILE="/home/ubuntu/server-monitor.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "=========================================" >> $LOG_FILE
echo "Monitor Run: $DATE" >> $LOG_FILE

# RAM Check
AVAILABLE_RAM=$(free -m | grep Mem | awk '{print $7}')
echo "Available RAM: ${AVAILABLE_RAM}MB" >> $LOG_FILE

# Disk Check
DISK_FREE=$(df -h / | tail -1 | awk '{print $4}')
echo "Free Disk: $DISK_FREE" >> $LOG_FILE

# Nginx Status
NGINX_STATUS=$(sudo systemctl is-active nginx)
echo "Nginx Status: $NGINX_STATUS" >> $LOG_FILE

# Active Users
ACTIVE_USERS=$(who | wc -l)
echo "Active Users: $ACTIVE_USERS" >> $LOG_FILE

echo "=========================================" >> $LOG_FILE
