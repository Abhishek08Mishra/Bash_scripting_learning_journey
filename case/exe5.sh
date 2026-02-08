#!/bin/bash

# ------------------------------------------------------------
# Task 3: File Operations Menu
# Goal: Practice file commands with case
# Instructions:
# 1. Menu:
#    1) List files
#    2) Show file details
#    3) Count lines in a file
#    q) Quit
# 2. Use case:
#    1 → ls -l
#    2 → ask file name, then ls -l <file>
#    3 → ask file name, then wc -l <file>
#    q → exit
# ------------------------------------------------------------

while true; do
	clear
	echo
	echo "File Operations Menu"
	echo
	echo "1) List Files"
	echo "2) Show Files details"
	echo "3) Count lines in a file"
	echo "q) Quit"
	echo
	read -p "Enter you option : " option
	echo
	case "${option,,}" in
	
	1)
		echo "Files list"
		echo
		ls -l
		echo 
		;;
	2)	
		echo "Files Details"
		echo
		read -p "Enter your filename : " filename
		echo
		if [[ -f "$filename" ]]; then
			echo "File exist and here is the details of $filename file :"
			echo
			ls -l "$filename"
		else
			echo "File not found!"
			echo
		fi
		;;
	3)
		echo "Word Count: "
		read -p "Enter your filename : " filename
		if [[ -f "$filename" ]]; then
			echo "Total words = $(wc -l $filename)"
		else
			echo "File not found!"
			echo
		fi
		;;
	q)
		echo "Exited From the program !"
		break
		echo
		;;
	*)
		echo "Invalid option selection!"
		;;
	esac
	echo
	read -p "Press enter to continue...."
done
