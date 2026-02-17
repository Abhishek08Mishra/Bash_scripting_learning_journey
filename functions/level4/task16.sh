#!/bin/bash

# Task 16: Function to check if a process is running

check_process() {

	read -p "Enter process name : " name
	
	if pgrep "$name" > /dev/null ; then
		echo "Process $name is running ✅️"
		return 0
	else
		echo "Process $name is not running ❌️"
	fi
}

check_process
status=$?
echo "Exit status : $status"
