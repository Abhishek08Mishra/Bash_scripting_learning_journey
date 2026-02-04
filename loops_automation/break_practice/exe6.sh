#!/bin/bash

# Task --> Find First Matching Word in a List
# Create an array: words=("apple" "banana" "cherry" "date").
# Ask the user to input a word.
# Loop through the array:
# If the word matches one in the array → print "Found it!" and break.
# Otherwise → continue checking

words=("apple" "banana" "mango" "orange" "cherry" "date")

while true; do
	read -p "Enter your input : " userinput
	
	if [[ "$userinput" == "$words" ]]; then
		echo "Checking....."
		sleep 1
		echo "Found it"
		break
	else
		echo "checking...."
		sleep 1
		echo "Not found"
		echo "Try again"
	fi
done
