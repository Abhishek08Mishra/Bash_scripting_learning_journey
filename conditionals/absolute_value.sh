#!/bin/bash

# Exercise 4 — Absolute Value

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
