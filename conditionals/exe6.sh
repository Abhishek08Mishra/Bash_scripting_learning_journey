#!/bin/bash

# Exercise — Grade Checker

# Asking input from the user
read -p "Enter your score (0 -100 ) : " score

# validate input
if ! [[ "$score" =~ ^-?[0-9]+$ ]]; then
        echo "Please enter a valid number."
        exit 1
fi

# Validate range
if [[ "$score" -lt 0 ]] || [[ "$score" -gt 100 ]]; then
    echo "Please enter a score between 0-100."
    exit 1
fi

# Creating grading system.

if [[ "$score" -lt 45 ]]; then
	echo "You got F grade, which means you fails in exam. Don't worry, try again."
	echo "A single sheet of paper can't decide your future 😎️"
	
elif [[ "$score" -ge 45 && "$score" -lt 50 ]]; then
	echo "You got D grade."
	
elif [[ "$score" -ge 50 && "$score" -lt 55 ]]; then 
	echo "You got D+ grade."

elif [[ "$score" -ge 55 && "$score" -lt 60 ]]; then 
	echo "you got C- grade."
	
elif [[ "$score" -ge 60 && "$score" -lt 65 ]]; then 
	echo "you got C grade."
	
elif [[ "$score" -ge 65 && "$score" -lt 70 ]]; then 
	echo "you got C+ grade."

elif [[ "$score" -ge 70 && "$score" -lt 75 ]]; then
	echo "you got B- grade."

elif [[ "$score" -ge 75 && "$score" -lt 80 ]]; then
	echo "you got B grade."

elif [[ "$score" -ge 80 && "$score" -lt 85 ]]; then
	echo "you Got B+ grade."

elif [[ "$score" -ge 85 && "$score" -lt 90 ]]; then
	echo "you got A- grade."
	
elif [[ "$score" -ge 90 && "$score" -le 100 ]]; then
	echo "you got A grade."
	echo "Congrats champs."

else
	echo "Score must be between 0 and 100."

fi
