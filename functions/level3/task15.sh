#!/bin/bash

# Task 15: Function to find files modified in last N days

find_modified_files() {
	
	# Ask user for file or directory path
	read -rp "Enter file path : " filepath
	
	# Check if the entered path exists
	if ! [[ -d "$filepath" ]]; then
		echo "Invalid path"
		return 1
	fi
	
	# Ask user for number of days to filter modified files
	read -p "Enter modification days (e.g., -5, 5, +5) : " moddays
	
	# Validate input: must be an integer (optionally with + or -)
	if ! [[ "$moddays" =~ ^[+-]?[0-9]+$ ]]; then
		echo "Error: Wrong input!"
		return 1
	fi
	
	# Find files in the path with modification time matching moddays
	find "$filepath" -type f -mtime "$moddays"
	# Note: if no files match, nothing is printed.
}

# Call the function
find_modified_files

#---------------------------------------------------------------
# Note on -mtime usage:
# -mtime -5  → modified within last 5 days (newer than 5 days)
# -mtime 5   → modified exactly 5 days ago
# -mtime +5  → modified more than 5 days ago (older than 5 days)
#---------------------------------------------------------------
