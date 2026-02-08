#!/bin/bash

# ------------------------------------------------------------
# Task 6: User Info Menu
# Goal: Learn about users
# Instructions:
# 1. Menu:
#    1) Show all users
#    2) Show current user
#    3) Check if a user exists
#    q) Quit
# 2. Use case:
#    1 → users or who or w 
#    2 → whoami
#    3 → ask for username, then id <username>
#    q → exit
# ------------------------------------------------------------

while true; do 
	clear
	echo "User Info Menu"
	echo "---------------"
	echo "1) Show all users"
	echo "2) Show current users"
	echo "3) Check User existence"
	echo "q) Quit"
	echo
	
	read -p "Enter your option : " choice
	
	case "${choice,,}" in 
	1)
		echo
		person="$(who)"
		echo "$person"
		;;
	2)
		echo
		echo "Current users : $(whoami)"
		echo
		;;
	3)
		echo
		read -p "Enter your username : " username
		id "$username"
		echo
		;;
	q)
		echo
		echo "Exited from the system !"
		break
		echo
		;;
	esac
	echo
	read -p "Press enter to continue...."
done
