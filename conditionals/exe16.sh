#!/bin/bash

# Exercise Simple Menu
# Create a menu:
# 1. Say Hello
# 2. Show Date 
# 3. Exit
# Ask user to choose an option and respond accordingly.

echo "Select an option ; "
echo " 1.) Greetings"
echo " 2.) Date"
echo " 3.) Exit"
read -p "Enter your choice : " option

today_date=$(date)

if ! [[ "$option" =~ ^[0-9]+$ ]]; then
	echo "Please enter a valid number (1,2,3) "
	exit 1
fi

if [[ "$option" == 1 ]]; then
	read -p "your name : " name && echo "Hello, $name!"
elif [[ "$option" == 2 ]]; then
	echo "Current Time : $today_date"
elif [[ "$option" == 3 ]]; then
	echo "Exited from the program!"
	exit 1
else
	echo "Please select option from the above"
fi
