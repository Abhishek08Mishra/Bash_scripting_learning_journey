#!/bin/bash

# Task : Password Retry
# Keep asking the user to enter a password until they type "linux".

while [[ "$psswd" != "iloveyou" ]]; do
	read -sp "Enter your password : " psswd
	echo
done
echo
echo "password match : $psswd"
