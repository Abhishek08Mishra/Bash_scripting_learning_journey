#!/bin/bash

# Task : Password Retry
# Keep asking the user to enter a password until they type "linux".

until [[ "$passwd" == "iloveyou" ]]; do
	echo
	read -sp "Enter your password : " passwd
done
echo
echo "Password match : $passwd"
