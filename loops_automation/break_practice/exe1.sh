#!/bin/bash

# Task --> Print numbers from 1 to 10, but stop the loop completely when number = 5.

for num in {1..10}; do

	if (( num == 5 )); then
		break
	fi
	
	echo "$num"
done
