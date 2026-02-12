#!/bin/bash

# Task 7: Function to check if a directory exists

dir_exist() {
	read -p "Enter your directory path : " path
	if [[ -d "$path" ]]; then
		echo "Directory exist"
	else
		echo "Directory does not exist"
	fi
}
dir_exist
