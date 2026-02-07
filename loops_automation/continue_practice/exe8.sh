#!/bin/bash

# Exercise -->  Skip Files That Don’t Exist
#--------------------------------------------
# Task:
# Ask the user to enter filenames one by one.
# If the file does not exist, print
# "File not found" and continue.
# If it exists, print
# "Processing <filename>".
# If user types "done", exit loop.
# (Hint: [[ -f "$filename" ]])
#---------------------------------------------

while true; do

	read -p "Enter your file name : " filename
	
	if [[ -f "$filename" ]]; then
		echo "Processing $filename"
	elif [[ "$filename" == "done" ]]; then
		echo "Exit from the loop"
		break
	else
		echo "File not found"
		continue
	fi
done
