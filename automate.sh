#!/bin/bash

LOG_DIR="/c/Users/marvi/Desktop/bash/logs"
APP_LOG="$LOG_DIR/application.log"
SYS_LOG="$LOG_DIR/system.log"
ERROR_PATTERNS = ("ERROR", "FATAL", "CRITICAL")

echo -e "\n Listing all .log files modified in the last 24 hours:"

find "$LOG_DIR" -name "*.log" -mtime -1

echo -e "\n Counting occurrences of specific log levels in application.log and system.log:"
grep "${ERROR_PATTERNS[0]}" "$APP_LOG"

echo -e "\nNumber of ERROR and FATAL entries in application.log:"
grep -c "${ERROR_PATTERNS[0]}" "$APP_LOG"
echo -e "\nNumber of FATAL entries in application.log:"
grep -c "${ERROR_PATTERNS[1]}" "$APP_LOG"      
echo -e "\nNumber of CRITICAL entries in application.log:"
grep -c "${ERROR_PATTERNS[2]}" "$APP_LOG"
grep "${ERROR_PATTERNS[2]}" "$APP_LOG"
echo -e "\nNumber of FATAL entries in system.log:"
grep -c "${ERROR_PATTERNS[1]}" "$SYS_LOG"
echo -e "\nNumber of CRITICAL entries in system.log:"
grep -c "${ERROR_PATTERNS[2]}" "$SYS_LOG"
grep "${ERROR_PATTERNS[2]}" "$SYS_LOG"