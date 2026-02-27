#!/bin/bash

# Task 24: Function to check if a service is active

check_service_status() {

	read -p "Enter service name: " name
	
	if [[ -z "$name" ]]; then
		echo "Error: No service name provided!"
		return 1
	fi
	
	local status
	
	if systemctl is-active --quiet "$name"; then
		status="Service active"
	else
		status="Service inactive"
	fi
	
	echo "Status = $status"
}
check_service_status
