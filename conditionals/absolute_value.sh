#!/bin/bash

# Exercise 4 — Absolute Value
# Ask for a number. Print its absolute value (positive version).
# Focus:`if` and arithmetic

# Taking input from the user
read -p "Enter your number : " num
echo 
# Validate input
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# Converting to absolute value
positive_num=${num#-}
echo "you entered : $num"
echo "Absolute value : $positive_num"
