#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Abhisek Das | Course: Open Source Software
# Purpose: Asks 3 questions and generates a personal OSS philosophy statement

echo "======================================="
echo "   Open Source Manifesto Generator"
echo "======================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username for the output file name ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose the manifesto paragraph and write to file ---
# Using >> to append each line to the output file
echo "" > "$OUTPUT"   # Create/clear the file first
echo "============================================" >> "$OUTPUT"
echo "       My Open Source Manifesto" >> "$OUTPUT"
echo "       Generated on: $DATE" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool built not for profit," >> "$OUTPUT"
echo "but because someone believed knowledge should be shared." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM, and that is exactly what" >> "$OUTPUT"
echo "open source gives every developer who uses it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I will build $BUILD and release it freely," >> "$OUTPUT"
echo "because the open source community taught me that the best" >> "$OUTPUT"
echo "way to grow is to give back. Software is not just code —" >> "$OUTPUT"
echo "it is a shared act of trust between strangers." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "                    — $(whoami), $DATE" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"

# --- Note on aliases: we could create an alias like ---
# alias mymanifesto='cat manifesto_$(whoami).txt'
# to quickly view this file anytime from the terminal

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# --- Display the generated manifesto ---
cat "$OUTPUT"