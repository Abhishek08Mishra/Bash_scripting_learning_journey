#!/bin/bash

# Exercise -- > Skip Negative Numbers
#-------------------------------------------
# Task:
# Loop through this list:
# numbers=(5 -2 8 -1 3 0 7)
# Skip all negative numbers using continue.
# Print only the non-negative numbers.
#--------------------------------------------

numbers=( 5 -2 8 -1 3 0 7 )
for num in "${numbers[@]}"; do
	if (( num < 0 )); then
		continue
	fi
echo "Positive number : $num "
done
