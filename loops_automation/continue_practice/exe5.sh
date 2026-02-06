#!/bin/bash

# Exercise 5 : Nested Loop Skip
#-------------------------------------------------------------------
#Task:
# Outer loop: i from 1 to 3
# Inner loop: j from 1 to 3
# If i == j, skip that iteration of the inner loop using continue
# Print all other combinations
# Goal
# Understand that continue only affects the loop it’s inside.
# -------------------------------------------------------------------

for i in {1..3}; do # Outer loop
	for j in {1..3}; do # Inner loop
		if (( i == j )); then
			continue
		fi
		echo "i:$i || j:$j"
	done
done
		
# output
# i:1 || j:2
# i:1 || j:3
# i:2 || j:1
# i:2 || j:3
# i:3 || j:1
# i:3 || j:2

