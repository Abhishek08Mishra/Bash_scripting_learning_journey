#!/bin/bash

# Task --> Skip even numbers

for i in {1..10}; do
	if (( i % 2 != 0 )); then
		echo "Odd number : $i"
		continue
	fi
done
		
