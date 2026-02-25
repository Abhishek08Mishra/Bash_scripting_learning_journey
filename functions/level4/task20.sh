#!/bin/bash

# Task 20: Function to check free RAM and print alert if low

check_free_ram(){

	local freeram=$(free -m | awk '/Mem:/ {print $7}')
	
	if [[ "$freeram" -gt 500 ]]; then
		echo "RAM OK: Available : $freeram MB"
	else
		echo "Warning : Low Ram! Available: $freeram MB"
	fi

}
check_free_ram
