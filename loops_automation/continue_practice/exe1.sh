#!/bin/bash

# Task --> Menu System
# Show a menu repeatedly:
# 1) Show date
# 2) Show current user
# 3) Exit
# Loop forever until user selects 3, then use break to stop.

while true; do
	echo
	echo "	********	"
	echo "	  MENU 	"
	echo "	********	"
	echo
	echo "1.) Show date"
	echo "2.) Show current user"
	echo "3.) Exit"
	echo

	read -p "Enter your option from the above Menu: " userinput
	echo

	# Reject non-numeric input (like ; 5k, abc, etc..)
	if ! [[ "$userinput" =~ ^[0-9]+$ ]]; then
		echo "======================================================"
		echo "Please enter a valid option from the menu (eg; 1,2,3)"
		echo "======================================================"
		continue
	fi

	case $userinput in
		1)
			echo "================================================="
			echo "Current Time : $(date)"
			echo "================================================="
			;;
		2)
			echo "========================"
			echo "Current user : $(whoami)"
			echo "========================"
			;;
		3)
			echo "========"
			echo " Exited"
			echo "========"
			break
			;;
		*)
			echo "======================================================"
			echo "Please enter a valid option from the menu (eg; 1,2,3)"
			echo "======================================================"
			;;
	esac
done
