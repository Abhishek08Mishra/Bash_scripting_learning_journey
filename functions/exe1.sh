#!/bin/bash

# Task 1: Add Numbers
# Goal: Use $1 and $2.
# Requirements:
# Function name: add
# Takes two numbers
# Prints their sum
# Store the result in a variable and print it

# function to add numbers

add() {
	echo $(( $1 + $2 ))
}

sum=$(add 5 3)
echo "Total sum : $sum"
