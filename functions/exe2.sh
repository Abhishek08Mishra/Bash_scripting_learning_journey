#!/bin/bash

#--------------------------------
# Task 2: Even or Odd
# Goal: Use return.
# Requirements:
# Function name: is_even
# Takes one number
# Returns 0 if even, 1 if odd
# Use if to print:
# Even number
# Odd number
#-------------------------------

is_even() {
	num=$(( $1 ))
	if (( num % 2 == 0 )); then
		echo "Even Number"
		return 0
	else
		echo "Odd number"
		return 1
	fi
}
is_even 8
echo $?

echo

is_even 19
echo $?
