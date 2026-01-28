#!/bin/bash

## Exercise --> Login Access System

# Create a script that:
# 1. Asks for:
  #  Username
  #  Password
  
# 2. If the username is `"admin"`
#   Then check if the password is `"root123"`
#   If yes → “Full access granted”
#    If no → “Wrong password”
#3. Else
#  If username is `"guest"`
#  → “Guest access only”
#   Otherwise → “Unknown user”

read -p "Enter your username: " username
echo
read -sp "Enter your password: " password
echo

if [[ "$username" == "admin" ]]; then
	if [[ "$password" == "root123" ]]; then
		echo "Full access granted."
	else
		echo "Wrong password!"
	fi
elif [[ "$username" == "guest" ]]; then
	echo "Guest access only"
else
	echo "Unknown user"
fi

