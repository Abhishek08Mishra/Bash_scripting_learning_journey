#!/bin/bash

# Task --> Odd Number Finder
# Loop through numbers 2 to 20.
# Stop the loop at the first odd number and print it.
# Hint: (( number % 2 != 0 ))

for num in {2..20}; do
	if (( num % 2 != 0 )); then
		echo "First odd number : $num"
		break
	fi
done
