#!/bin/bash
# Exercise 1 — Positive, Negative, or Zero
#
# This script first validates the user input to ensure it is a number.
# After validation, it checks whether the number is greater than, less than, or equal to zero.
# - If the number > 0, it prints "Positive number"
# - If the number < 0, it prints "Negative number"
# - If the number = 0, it prints "Zero"


# Asking user to enter number
read -p "Enter your number: " num

# Validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# Checking number
if [ "$num" -gt 0 ]; then
    echo "Positive number"
elif [ "$num" -lt 0 ]; then
    echo "Negative number"
else
    echo "Zero"
fi
