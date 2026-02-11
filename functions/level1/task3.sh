#!/bin/bash

# Task 3: Function to print system uptime

get_uptime() {
	local utime=$(uptime)
	echo
	echo "$utime"
}

get_uptime
