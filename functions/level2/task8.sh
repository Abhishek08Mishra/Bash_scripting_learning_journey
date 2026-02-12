#!/bin/bash

# Task 8: Function to count number of files in a directory
# "--------------------------------------------------------"

# Functions to count files in a directory
count_files() {
	echo
	read -p "Enter directory path : " path
	if [[ -d "$path" ]]; then
		
		# counts the  regulars files inside that directory not in sub-directories
		# -maxdepth 1  --> Looks only inside that directory
		local count=$(find "$path" -maxdepth 1 -type f | wc -l) 
			
		echo "Total files : $count"
	else
		echo "Path exist but is not a directory"
	fi
}

count_files
