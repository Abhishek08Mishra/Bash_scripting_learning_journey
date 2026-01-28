#!/bin/bash

# Exercise --> Bonus challenge --> Menu with nested logic

echo "Select an option from menu:"
echo
echo "1.) Check Number"
echo
echo "2.) Check File"
echo
echo "3.) Exit"
echo

read -p "Select your option:" choice
echo

if ! [[ "$choice" =~ ^[0-9]+$ ]]; then
	echo "Please enter a valid number"
	exit 1
fi

if (( choice == 1 )); then
	read -p "Enter your number:" num
	echo
	if (( num == 0 )); then
		echo "It is Zero"
	elif (( num > 0 )); then
		if (( num % 2 == 0 )); then
			echo "It is positive even number"
		else
			echo "It is positive odd number"
		fi
	elif (( num % 2 == 0 )); then
		echo "It is negative even number"
	else
		echo "It is negative odd number"
	fi

elif (( choice == 2 )); then
	read -p "Enter your filename:" fname
	echo
	if [[ -e "$fname" ]]; then
		if [[ -f "$fname" ]]; then
			if [[ -r "$fname" ]]; then
				echo "Yes, the file exists and is readable."
			else
				echo "Yes, the file exists and is not readable."
			fi
		elif [[ -d "$fname" ]]; then
			echo "Yes, it's a directory , not a regular file."
		else
			echo "The path exists but is neither a regular file nor a directory."
		fi
	else
		echo "File does not exist."
	fi

elif (( choice == 3 )); then
	echo "Exited 🗿️"
	exit 0
else
	echo "Invalid choice"
fi
