#!/bin/bash

# Task --> Stop inner loop at match.

for i in {1..4}; do # Outer loop
	for j in {1..6}; do # Inner loop
		if (( i * j > 10 )); then 
			echo "Stopping inner loop at i : $i  and j : $j"
			break
		fi
	done
done
