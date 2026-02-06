#!/bin/bash

# Task -->  Skip Multiples of 3
# ---------------------------------------
# Loop numbers from 1 to 15
# If a number is divisible by 3, skip it
# Print the rest
# -----------------------------------------

for i in {1..15}; do
	if (( i % 3 == 0 )); then
		continue
	fi
	echo "$i"
done
