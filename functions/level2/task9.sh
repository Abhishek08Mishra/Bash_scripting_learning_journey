#!/bin/bash

# Task 9: Function to print file size in human-readable format.
# -------------------------------------------------------------

# Function to get file size in human readable format
get_file_size() {
	echo
	echo "File size checker"
	echo "------------------"
	echo
	read -p "Enter filename : " filename
	echo
	
	#Checks if file exist or not
	if [[ -f "$filename" ]]; then 
		local filesize=$(ls -l -s -h "$filename") # List the file details and size in human readable format
		echo "File Details"
		echo "-------------"
		echo "$filesize"
	else
		echo "File does not exist !"
	fi
}

#function call
get_file_size
