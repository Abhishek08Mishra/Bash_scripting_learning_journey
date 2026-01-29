#!/bin/bash

# Asking user to input their age
read -p "Enter your age: " age
echo

# Check if input is a non-negative whole number
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "That's not a valid age!"
else
    if (( age == 0 )); then
        echo "Welcome to the world, newborn! 👶"
    elif (( age < 18 )); then
        echo "Minor"
    elif (( age < 60 )); then
        echo "Adult"
    elif (( age <= 100 )); then
        echo "Senior"
    else
        echo "Wow! you are high on somethings! 🎉"
    fi
fi
