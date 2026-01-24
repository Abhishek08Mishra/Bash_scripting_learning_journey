#!/bin/bash

# Exercise 3 — Largest of Two Numbers.
# Ask for two numbers. Print the larger one, or if they are equal.

# Asking a user to input two number
read -p "Enter your first number : " num1
read -p "Enter your second number : " num2

# Validate input
# If the user didn't enter a whole number 
# (positive, negative, or zero), tell them it's invalid and stop the script."

if ! [[ "$num1" && "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# checking number
if [ "$num1" -gt "$num2" ];  then
	echo "largest number is $num1 "
elif [ "$num2" -gt "$num1" ]; then
	echo "largest number is $num2 "
else
	echo "Both entered input number is equal i.e. $num1 and $num2 are same."
fi
