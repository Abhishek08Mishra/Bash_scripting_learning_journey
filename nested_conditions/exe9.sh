#!/bin/bash

#Exercise  — User Privilege Checker
#Concept: System awareness
#Check current user.
#Logic:
#If user is root:
#If running in home directory → warn
#Else → normal root activity
#Else:
#If user is sudo user → limited admin
#Else → regular user
#Hints:
#$USER
#id -u

uid=$(id -u)

if (( uid == 0 )) ; then
	if [[ "$PWD" == "$HOME" ]]; then
		echo "Warning : Danger Zone💀️"
	else
		echo "Normal root activity"
	fi
elif sudo -n true 2>/dev/null ; then
	echo "User has sudo privilege"
else
	echo "Normal user"
fi
