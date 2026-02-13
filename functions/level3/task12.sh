#!/bin/bash

# Task 12: Function to check if a file is executable

file_checker() {
	
	read -p "Enter file name : " filename
	
	if [[ -e "$filename" ]]; then
		if [[ -x "$filename" ]]; then
			echo "File has executable permission."
		else
			echo "File does not have executable permission."
		fi
	else
		echo "File not found"
	fi
}
file_checker
