#!/bin/bash

echo -e "\n Listing all .log files modified in the last 24 hours:"

find . -name "*.log" -mtime -1

echo -e "\n Counting occurrences of specific log levels in application.log and system.log:"
grep "ERROR" application.log

echo -e "\nNumber of ERROR and FATAL entries in application.log:"
grep -c "ERROR" application.log
echo -e "\nNumber of FATAL entries in application.log:"
grep -c "FATAL" application.log
echo -e "\nNumber of CRITICAL entries in application.log:"
grep -c "CRITICAL" application.log
grep "CRITICAL" application.log
echo -e "\nNumber of FATAL entries in system.log:"
grep -c "FATAL" system.log
echo -e "\nNumber of CRITICAL entries in system.log:"
grep -c "CRITICAL" system.log
grep "CRITICAL" system.log