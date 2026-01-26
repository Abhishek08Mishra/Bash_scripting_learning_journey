#!/bin/bash

# Nested version of checking whether a number is divisible by 2,5, both or neither.
# Asking user for input
read -p "Enter your number : " num

# Vaidate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number !"
	exit 1
fi

#Checking conditions
if (( num % 2 == 0)); then
	if (( num % 5 == 0 )); then
		echo "It is divisible by both 2 and 5."
	else
		echo "It is divisible by 2."
	fi
else
	if (( num % 5 == 0 )); then
		echo "It is divisible by 5."
	else
		echo "It is not divisible by 2 and 5."
	fi
fi
