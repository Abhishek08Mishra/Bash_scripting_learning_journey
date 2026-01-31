#!/bin/bash

# Exercise --> Multiplication Table

# Asking input from the user.
read -p "Enter your number:" num

# Validate input.
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number!"
	exit 1
fi

# Loops conditions for multiplication. 
for i in {1..10}; do
	echo "$num * $i = $(( num * i ))"
done
