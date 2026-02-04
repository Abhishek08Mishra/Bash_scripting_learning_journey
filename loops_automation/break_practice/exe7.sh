#!/bin/bash

# File Existence Watcher
# Keep asking the user to enter a filename.
# If the file exists → print "File exists!" and stop.
# Otherwise → print "File not found, try again".

while true ; do

	read -p "Enter your file name : " userinput
	
	if [[ -f "$userinput" ]]; then
		echo "File exists!"
		break
	else
		echo "File not found, try again !"
		echo
	fi
done
