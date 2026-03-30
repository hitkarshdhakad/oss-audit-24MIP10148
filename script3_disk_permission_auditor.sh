#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Abhisek Das | Course: Open Source Software
# Purpose: Loops through key directories and reports permissions and size

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists before auditing
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size, suppress permission errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "--- Python Config Directory Check ---"

# --- Check if Python's standard config/lib directory exists ---
PYTHON_DIR="/usr/lib/python3"

# Find the actual versioned python3 directory dynamically
PYTHON_DIR=$(find /usr/lib -maxdepth 1 -name "python3*" -type d | head -1)

if [ -d "$PYTHON_DIR" ]; then
    # Show permissions of Python's library directory
    PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1, $3, $4}')
    echo "Python lib dir: $PYTHON_DIR"
    echo "Permissions   : $PERMS"
else
    echo "Python library directory not found under /usr/lib"
fi