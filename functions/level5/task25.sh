#!/bin/bash

# Task 25: Function to restart a service only if it is down

restart_service() {

	read -p "Enter service: " service
	
	if [[ -z "$service" ]]; then
		echo "Error: No service name provided!"
		return 1
	fi
	

	if systemctl is-active --quiet "$service" ; then
		echo "Service: $service is already running"
		return 0
	fi
	
	echo "Starting services....."
	systemctl start "$service"
	sleep 3
	echo "Service: $service is running now ....."
}
restart_service
