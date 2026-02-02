#!/bin/bash 

# Task: Print numbers 1 - 20 , but STOP when you hit 15

for num in {1..20}; do
	if (( num == 15 )); then
		break
	fi
echo "$num"
done
