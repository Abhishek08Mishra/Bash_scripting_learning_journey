#!/bin/bash

# Exercise — Age Eligibility
# Ask for age. Print: Minor (<18), Adult (18–60), Senior (>60).

# Asking user to input their age.
read -p "Enter your age : " age

# Validate input
if ! [[ "$age" =~ ^-?[0-9]+$ ]]; then
	echo "Please enter a valid number."
	exit 1
fi

# Validate range
if [[ "$age" -lt 0 ]] || [[ "$age" -gt 100 ]]; then
    echo "Please enter a number between 0-100."
    exit 1
fi

# Check Age
if [[ "$age" -lt 18 ]]; then
	echo "Minor 👶️"
elif [[ "$age" -ge 18 && "$age" -le 60 ]]; then
	echo "Adult 😎️"
else
	echo "Senior 👴️👵️"
fi
