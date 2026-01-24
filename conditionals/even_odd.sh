#!/bin/bash

# Exercise 2 — Even or Odd

# Asking user to input number
read -p "Enter your number : " num

# Validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# checking number
if (( num % 2 == 0 )); then
	echo "The number $num is Even Number"
else
	echo "The number $num is Odd Number"
fi

# Inside (( )), variables don’t need a $ prefix.
# Not wrong, just cleaner.
