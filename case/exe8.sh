#!/bin/bash

# ------------------------------------------------------------
# Task 8: System Info Menu
# Goal: Learn multiple system commands
# Instructions:
# 1. Menu:
#    1) Show CPU info
#    2) Show memory info
#    3) Show OS version
#    q) Quit
# 2. Use case:
#    1 → lscpu
#    2 → free -h
#    3 → uname -a
#    q → exit
# ------------------------------------------------------------

while true; do
	clear
	echo
	echo "-----------------"
	echo "System Info Menu"
	echo "-----------------"
	echo
	echo "1) Check CPU info"
	echo "2) Check memory info"
	echo "3) Check OS version"
	echo "q) Quit"
	echo
	read -p "Enter your option : " choice
	echo
	
	case "${choice,,}" in
	1)
		echo "CPU Information"
		echo "==============="
		cpuinfo="$(lscpu)"
		echo "$cpuinfo"
		echo
		;;
	2)
		echo "Memory Information"
		echo "=================="
		meminfo="$(free -h)"
		echo "$meminfo"
		echo
		;;
	3)
		echo "OS Version"
		echo "=========="
		getosversion="$(uname -a)"
		echo "$getosversion"
		echo
		;;
	q)
		echo "Exited from the system!"
		echo 
		break
		;;
	*)
		echo "Invalid option! Try again...."
		echo
	esac
	echo
	read -p "Press enter to continue..."
done
