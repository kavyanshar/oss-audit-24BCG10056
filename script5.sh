#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kavyansh Sharma | Course: Open Source Software

echo "=============================="
echo " Open Source Manifesto Generator"
echo "=============================="
echo "Answer three questions to generate your manifesto."
echo ""

# --- Ask user three questions interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username for the filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose the manifesto paragraph and save to file ---
echo "" > $OUTPUT
echo "Open Source Manifesto — Kavyansh Sharma" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day, I rely on $TOOL — a tool built freely by people who believed" >> $OUTPUT
echo "that knowledge should be shared, not locked away. To me, freedom means $FREEDOM." >> $OUTPUT
echo "That is why I believe in the open source way of life." >> $OUTPUT
echo "One day, I will build $BUILD and share it with the world for free," >> $OUTPUT
echo "just as others have shared their work with me." >> $OUTPUT
echo "" >> $OUTPUT
echo "This is my commitment to the open source community." >> $OUTPUT

# --- Display the manifesto ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo "=============================="
cat $OUTPUT
