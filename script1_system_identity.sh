#!/bin/bash
# Script 1: System Identity Report
# Author: Abhisek Das | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Abhisek Das"
SOFTWARE_CHOICE="GIT"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date   : $DATE"
echo "License: GNU General Public License (GPL)"
