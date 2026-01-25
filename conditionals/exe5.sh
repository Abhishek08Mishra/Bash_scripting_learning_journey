#!/bin/bash

# Exercise = Number Divisible by 3
# Ask for a number. Print if it’s divisible by 3.

read -p "Enter your number : " num
echo

# validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number."
	exit 1
fi

# Check if it is divisible by 3 or not.
if (( num % 3 == 0 )); then
	echo "$num is divisible by 3."
else
	echo "Not divisible! ❌️"
fi
