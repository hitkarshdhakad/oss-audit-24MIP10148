#!/bin/bash
# Script 4: Log File Analyzer
# Author: Abhisek Das | Course: Open Source Software
# Purpose: Reads a log file and counts lines matching a keyword

# --- Create a sample log file to analyze (for demo purposes) ---
LOGFILE="test_python.log"
KEYWORD="error"
COUNT=0

# --- Generate sample log content mimicking a real Python app log ---
cat > "$LOGFILE" << EOF
INFO: Python interpreter started successfully
INFO: Loading module os
WARNING: deprecated function used in script.py
ERROR: FileNotFoundError - config.json not found
INFO: Attempting fallback configuration
ERROR: Permission denied - cannot write to /var/log
INFO: Module numpy imported successfully
WARNING: memory usage above 80%
ERROR: ConnectionTimeout - database unreachable
INFO: Retrying connection...
INFO: Connection restored
ERROR: UnicodeDecodeError in input stream
INFO: Script completed with 4 errors
EOF

# --- Check if the log file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if the file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: '$LOGFILE' is empty. No lines to analyze."
    exit 0
fi

echo "Analyzing: $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "----------------------------"

# --- Read the file line by line and count keyword matches ---
while IFS= read -r LINE; do
    # Case-insensitive search for keyword in each line
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print the final count summary ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print the last 5 matching lines ---
echo "Last 5 matching lines:"
echo "----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5