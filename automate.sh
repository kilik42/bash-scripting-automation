#!/bin/bash

LOG_DIR="/c/Users/marvi/Desktop/bash/logs"
APP_LOG="$LOG_DIR/application.log"
SYS_LOG="$LOG_DIR/system.log"


echo -e "\n Listing all .log files modified in the last 24 hours:"

find "$LOG_DIR" -name "*.log" -mtime -1

echo -e "\n Counting occurrences of specific log levels in application.log and system.log:"
grep "ERROR" "$APP_LOG"

echo -e "\nNumber of ERROR and FATAL entries in application.log:"
grep -c "ERROR" "$APP_LOG"
echo -e "\nNumber of FATAL entries in application.log:"
grep -c "FATAL" "$APP_LOG"      
echo -e "\nNumber of CRITICAL entries in application.log:"
grep -c "CRITICAL" "$APP_LOG"
grep "CRITICAL" "$APP_LOG"
echo -e "\nNumber of FATAL entries in system.log:"
grep -c "FATAL" "$SYS_LOG"
echo -e "\nNumber of CRITICAL entries in system.log:"
grep -c "CRITICAL" "$SYS_LOG"
grep "CRITICAL" "$SYS_LOG"