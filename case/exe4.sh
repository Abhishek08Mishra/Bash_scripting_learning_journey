#!/bin/bash

# ------------------------------------------------------------
# Task 2: Network Tools Menu
# Goal: Learn networking basics
# Instructions:
# 1. Menu:
#    1) Show IP addresses
#    2) Ping a host
#    3) Show routing table
#    q) Quit
# 2. Use case to run:
#    1 → ip addr
#    2 → ask for hostname, then ping -c 4 <host>
#    3 → ip route
#    q → exit
# 3. Repeat menu until quit
# ------------------------------------------------------------

while true; do
	clear
	echo
	echo "Network Tools Menu"
	echo "-------------------"
	echo "1) Show Ip addresses"
	echo "2) Ping a host"
	echo "3) Show routing table"
	echo "q) Quit"
	echo
	read -p "Enter your choice : " choice
	
	case "${choice,,}" in 
	1)
		echo "Showing iP addresses......"
		sleep 1
		ipaddr="$(ip addr show eth0 | grep inet)"
		echo "$ipaddr"
		;;
	2)
		echo "Starting connection...."
		sleep 1
		read -p "Enter hostname : "  hostname
		connection="$(ping -c 4 $hostname)"
		echo "$connection"
		;;
	3)
		echo "Routing Table... :"
		rtable="$(ip route)"
		sleep 1
		echo "$rtable"
		;;
	q)
		echo "Taking exit From this system...."
		sleep 2
		break
		;;
	esac
	echo
	read -p "Press Enter to continue..."
done
