#!/bin/bash

# Task 22: Function to check internet connectivity

check_internet() {
	read -p "Enter IP address or domain name : " target
	
	if [[ -z "$target" ]]; then
		echo "Error : No target provided"
		return 1
	fi
	
	echo "Pinging $target...."
	
	if ping -c 4 "$target" > /dev/null 2>&1;then
		echo "✅️ $target is reachable."
	else
		echo "❌️ $target is not reachable"
	fi
}
check_internet
