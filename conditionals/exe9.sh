#!/bin/bash

# Exercise — Even & Positive**
# Ask for a number. Print “Even and Positive” if it satisfies both, else print why it failed.

# Asking input from user. 
read -p "Enter your number : " num

# Validate input.
if ! [[ "$num"  =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number."
	exit 1
fi

# Check conditions
if (( num % 2 == 0 && num > 0 )); then
	echo "Even and positive"
else
	echo "Not satisfied"
	
	# Explain why it failed
	if (( num <= 0 )); then
		echo "--> Number is not positive"
	fi
	 
	if (( num % 2 != 0 )); then
		echo "--> Number is  not even"
	fi
fi
