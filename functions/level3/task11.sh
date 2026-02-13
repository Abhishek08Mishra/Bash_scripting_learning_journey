#!/bin/bash

# Task 11: Function to check if a file is readable

file_checker() {
	read -p "Enter filename : " filename
	
	if [[ -e "$filename" ]]; then
		if [[ -r "$filename" ]]; then
			echo "File is readable"
		else
			echo "File is not readable"
		fi
	else
		echo "File not found"
	fi
}
file_checker
