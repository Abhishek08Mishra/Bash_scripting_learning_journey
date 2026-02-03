#!/bin/bash

# Task: Guess the Number Game
# Set a secret number = 7. Keep asking the user to guess until they get it right.
# Extra Challenge
# Tell them "Too high" or "Too low".

secret=7
num=""
until [[ "$secret" -eq "$num" ]]; do
	read -p "Enter your number : " num
	
	if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
		echo "Please enter a valid number!"
		exit 1
	fi
	
	if (( num < secret )); then
		echo "Too low"
	elif (( num > secret )); then
		echo "Too high"
	else
		echo "You won 🎊️"
	fi
done
