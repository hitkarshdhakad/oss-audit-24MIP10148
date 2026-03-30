#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Abhisek Das | Course: Open Source Software
# Purpose: Checks if Python is installed and displays its details

# --- Define the package we are auditing ---
PACKAGE="python3"

# --- Check if python3 command exists on the system ---
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    echo ""
    
    # --- Get and display the installed version ---
    VERSION=$($PACKAGE --version 2>&1)
    echo "Version  : $VERSION"
    
    # --- Get the install location of the binary ---
    LOCATION=$(which $PACKAGE)
    echo "Location : $LOCATION"
    
    # --- Display the license info ---
    echo "License  : Python Software Foundation License (PSF)"
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo ""

# --- Case statement: philosophy note based on package name ---
case $PACKAGE in
    python3)
        echo "Python: a language built entirely by community, for everyone" ;;
    httpd)
        echo "Apache: the web server that built the open internet" ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps" ;;
    git)
        echo "Git: version control that changed how the world codes" ;;
    vlc)
        echo "VLC: plays anything, built freely by students in Paris" ;;
    *)
        echo "An open-source tool that stands on community shoulders" ;;
esac