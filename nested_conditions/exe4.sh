#!/bin/bash

# Exercise --> Grading system by nested conditions

# Asking user to input score
read -p "Enter your score:" score
echo

# Validate input
if ! [[ "$score" =~ ^[0-9]+$ ]]; then
	echo "Please enter valid number"
	exit 1
fi

# Checking conditions
if (( score >= 0 && score <= 100 )); then
	if (( score >= 90 )); then
		echo "Grade A"
	elif (( score >= 75 )); then
		echo "Grade B"
	elif (( score >= 50 )); then 
		echo "Grade c"
	else
		echo "Fail"
	fi
else
	echo "Invalid score"
fi
