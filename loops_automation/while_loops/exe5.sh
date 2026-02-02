#!/bin/bash

# Task: Print numbers 1 - 20, but:
# Skip multiples of 3
# Stop completely when you hit 12


for num in {1..20}; do
	if (( num == 12 )); then
		break
	fi
	
	if (( num % 3 == 0 )); then
		continue
	fi
echo "$num"
done
