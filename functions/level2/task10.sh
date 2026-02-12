#!/bin/bash

# Task 10: Function to create a directory only if it doesn’t exist.
# ------------------------------------------------------------------

create_dir() {
	echo
	echo "Directory operation"
	echo "--------------------"
	echo
	read -p "Enter directory name : " dirname
	
	# Checking if directory exists or not.
	if [[ -d "$dirname" ]]; then
		echo
		echo "Directory already exists"
		echo
	else
		# Creating a local variable to create directory if it does not exists.
		local crtdir=$(mkdir "$dirname")
		echo "$crtdir"
		echo "Directory with this name does not exist..."
		echo
		echo "Creating Directory....."
		echo
		echo "Directory created : $dirname"
		echo
	fi
}

#Functions call to create directory only if it does not exists.
create_dir
