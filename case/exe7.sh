#!/bin/bash

# ------------------------------------------------------------
# Task 5: Process Menu
# Goal: Learn process management
# Instructions:
# 1. Menu:
#    1) List running processes
#    2) Search for a process
#    3) Kill a process
#    q) Quit
# 2. Use case:
#    1 → ps aux
#    2 → ask process name, then ps aux | grep <name>
#    3 → ask for PID, then kill <PID>
#    q → exit
# ------------------------------------------------------------

while true; do
	clear
	echo
	echo "************************"
	echo "* System Process Menu  *"
	echo "************************"
	echo "1) List running process"
	echo "2) Search for a process"
	echo "3) Kill a process"
	echo "q) Quit"
	echo
	read -p "Enter your option : " choice
	echo
	
	case "${choice,,}" in
	1)
		echo
		ps aux
		echo
		;;
	2)
		echo
		read -p "Enter your process name : " name
		ps aux | grep "$name"
		echo
		;;
	3)
		echo
		read -p "Enter the PID to kill the process : " PID
		kill "$PID"
		echo
		;;
	q)
		echo "Program Terminated !"
		break
		echo
		;;
	*)
		echo
		echo "Invalid option !"
		echo "Please select a valid option and enter valid input to proceed..."	
	esac
	echo
	read -p "Press enter to continue...."
done
