#!/bin/bash

# Task 2: Function to print current user
#whoami
#who

current_user() {
	local user=$(who)
	echo
	echo "Current user"
	echo "------------"
	echo
	echo "$user"
}
current_user
