#!/bin/bash

# Task : Password Attempt Limit
# Simulate login attempts:
# Ask the user to enter a password in a loop
# They only get 3 tries
# If they enter "admin123" → print "Access granted" and break
# If they fail 3 times → print "Account locked"


attempts=3

while (( attempts > 0 )); do
	read -p "Enter your password : " password
	
	if [[ "$password" == "admin123" ]]; then
		echo "Access granted !"
		break 
	else
		(( attempts -- ))
		echo "Wrong password ! Attempts left : $attempts"
	fi
done

if (( attempts == 0 )); then
	echo "Account Locked !"
fi
