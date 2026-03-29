#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kavyansh Sharma | Course: Open Source Software
# Usage: ./script4.sh /var/log/syslog error

# --- Accept log file and keyword as arguments ---
LOGFILE=${1:-"/var/log/syslog"}  # Default log file
KEYWORD=${2:-"error"}             # Default keyword to search

COUNT=0  # Counter for matching lines

# --- Check if the log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Read file line by line and count keyword matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "=============================="
echo " Log File Analyzer"
echo "=============================="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Matches : $COUNT lines found"
echo ""

# --- Print last 5 matching lines ---
echo "Last 5 matching lines:"
echo "----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
