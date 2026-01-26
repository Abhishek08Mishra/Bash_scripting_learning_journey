#!/bin/bash

#  10 — Multiple of 2 or 5
# Ask for a number. Print if it’s divisible by 2, 5, both, or neither.

# Asking user for input
read -p "Enter your number : " num

# Validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number !"
	exit 1
fi

# Checking conditions
if (( num % 2 == 0 && num % 5 == 0 )); then
	echo "It is divisible by both 2 and 5."
elif (( num % 2 == 0 )); then
	echo "It is divisible by 2"
elif (( num % 5 == 0)); then
	echo "It is divisible by 5"
else
	echo "It is not divisible by 2 or 5."

fi
