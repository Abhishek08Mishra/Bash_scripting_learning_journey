#!/bin/bash

# **Exercise 8 — Teen or Not**
# Ask for age. Print “Teenager” if 13–19, else “Not a teenager”.
#  *Focus:* `-ge` and `-le` combination

#Ask user to input their age.
read -p "Enter your age : " age

# Validate input 
if ! [[ "$age"  =~ ^[0-9]+$ ]]; then
	echo "Please enter a valid number."
	exit 1
fi

# Validate realistic range
if [[ "$age" -gt 100 ]]; then
    echo "Please enter a realistic age (0–100)."
    exit 1
fi

# Check Teen or Not.
if [[ "$age" -ge 13 && "$age" -le 19 ]]; then
	echo "Teenager."
else
	echo "Not a teenager"
fi
