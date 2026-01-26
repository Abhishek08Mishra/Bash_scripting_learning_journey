#!/bin/bash

# Exercise --> Ask for a filename. Print which permissions it has: readable, writable, executable.

read -p "Enter your filename : " path

if [[ -e "$path" ]]; then
	echo "File or path exists : $path"
	
	[[ -r "$path" ]] && echo "Readable Permission."
	[[ -w "$path" ]] && echo "Writable permission."
	[[ -x "$path" ]] && echo "Executable permission."
	
	if [[ ! -r "$path" && ! -w "$path" && ! -x "$path" ]]; then
		echo "No read, write or executable permission."
	fi
else
	echo "It does not exists."
fi
