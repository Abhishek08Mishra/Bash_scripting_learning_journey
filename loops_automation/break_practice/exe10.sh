#!/bin/bash

# Task --> Break both loops when found 

for i in {1..5}; do # Outer loop
	for j in {1..5}; do # Inner loop
		if (( i == j && i + j == 6)); then
			echo "Special position found at i = $i and j = $j"
			break 2
		fi
	done
done
	
# Output --> Special position found at i = 3 and j = 3
