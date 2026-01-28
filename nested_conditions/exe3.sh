#!/bin/bash

# Exercise : File Inspector

read -p "Enter your filename:" fname

if [[ -e "$fname" ]]; then
	if [[ -f "$fname" ]]; then
		if [[ -r "$fname" ]]; then
			echo "Yes, the file exists and is readable."
		else
			echo "Yes, the file exists and is not readable."
		fi
	elif [[ -d "$fname" ]]; then
		echo "Yes, it's a directory, not a regular file."
	else 
		echo "The path exists but is neither a regular file nor a directory."
	fi
else
	echo "File does not exist."
fi
