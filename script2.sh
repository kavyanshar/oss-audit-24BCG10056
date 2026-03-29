#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kavyansh Sharma | Course: Open Source Software

# --- Package to inspect ---
PACKAGE="python3"  # We are checking if Python3 is installed

# --- Check if package is installed ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    # Show version, license and summary of the package
    dpkg -l $PACKAGE | grep -E "python3"
else
    echo "$PACKAGE is NOT installed."
fi

# --- Philosophy note based on package name ---
case $PACKAGE in
    python3)
        echo "Python: a language built entirely by its community, for everyone" ;;
    httpd)
        echo "Apache: the web server that built the open internet" ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps" ;;
    vlc)
        echo "VLC: built by students, plays everything, costs nothing" ;;
esac
