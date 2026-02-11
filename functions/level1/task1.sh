#!/bin/bash

# Task 1: Function to print hostname

# Functions to get hostname
get_hostname() {
	local host=$(hostname) # Creating local variable and storing inside the function.
	echo "Host name = $host" 
}
get_hostname # Functions call 
