#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kavyansh Sharma | Course: Open Source Software

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# --- Check if Python's config directory exists ---
echo ""
echo "Checking Python config directory..."
if [ -d "/usr/lib/python3" ]; then
    echo "Python config found:"
    ls -ld /usr/lib/python3
else
    echo "Python directory not found at /usr/lib/python3"
fi
