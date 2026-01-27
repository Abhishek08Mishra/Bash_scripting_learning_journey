#!/bin/bash

#  Exercise --> Asks the user to enter a number.
# Checks:
# If the number is positive
# Then check if it is even or odd
# Else if the number is negative
# Then check if it is even or odd
# Else → it’s zero

# Asking input from user.
read -p "Enter your number: " num

# Validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number !"
	exit 1
fi

# Checking conditions
if (( num > 0 )); then
	if (( num % 2 == 0 )); then
		echo "It is a positive even number."
	else
		echo "It is a positive odd number."
	fi
elif (( num < 0 )); then
	if (( num % 2 == 0 )); then
		echo "It is a negative even number."
	else
		echo "It is a negative odd number."
	fi
else
	echo "It is zero."
fi
