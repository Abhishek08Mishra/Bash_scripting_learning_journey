#!/bin/bash

# Exercise  — File Type Checker
# Ask for a filename. Print whether it is a file, directory, or doesn’t exist.

# Asking user for input 
read -p "Enter a filename or path : " path

if [[ -e "$path" ]]; then
	if [[ -f "$path" ]]; then
		echo "It is a file"
	elif [[ -d "$path" ]]; then
		echo "It is a directory"
	else
		echo "It exists, but it is not file or directory."
	fi
else
	echo "It doesnot exists."
fi
