#!/bin/bash

# Task 6: Function to check if a file exists
#--------------------------------------------"

get_file() {
	read -p "Enter your filename : " filename
	echo
	if [[ -f "$filename" ]]; then #check file exists or not.
		echo "File exist."
	else
		echo "File does not exist."
	fi
}

#function call
get_file
