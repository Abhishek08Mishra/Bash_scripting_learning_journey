#!/bin/bash

# Exercise  — Backup Decision Script
# Concept: Real admin logic

# Asking directory and backup location
# Used read -r to prevent backslash escaping issues
read -r -p "Enter your directory path: " dirpath
echo
read -r -p "Enter your backup location: " bkuploc
echo

if [[ -d "$dirpath" ]]; then
    if [[ -d "$bkuploc" ]]; then
        if [[ -w "$bkuploc" && -x "$bkuploc" ]]; then
            echo "Ready to backup"
        else
            echo "Destination exists but is not writable"
        fi
    else
        echo "Destination missing or not a directory"
    fi
else
    echo "Source missing or not a directory"
fi

