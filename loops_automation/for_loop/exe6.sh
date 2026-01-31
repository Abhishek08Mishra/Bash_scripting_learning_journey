#!/bin/bash

# Exercise --> Even Numbers Only
# Print all even numbers from 1 to 20.

for num in {1..20}; do
	if (( num % 2 == 0 )); then
		echo "Even number : $num"
	fi
done
