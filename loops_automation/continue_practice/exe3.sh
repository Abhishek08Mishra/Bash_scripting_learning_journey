#!/bin/bash

# Task --> Don’t Print a Specific Word

fruits=("apple" "banana" "orange" "mango" "watermelon" "grapes") # Array

for i in "${fruits[@]}"; do
	if [[ "$i" == "banana" ]]; then
		continue
	fi
	echo "$i"
done
