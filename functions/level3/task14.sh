#!/bin/bash

# Task 14: Function to find files larger than X MB

check_file_size() {

	read -rp "Enter file path : " path
	
	# Path validation
	if ! [[ -d "$path" ]]; then
		echo "Invalid path"
		return 1
	fi
	
	# list all files >50MB in the directory, show their size in MB, and sort largest first.	
	local filesize="$(find "$path" -type f -size +50M -exec du -BM {} + | sort -n)"
	
	echo "$filesize"
}

check_file_size
