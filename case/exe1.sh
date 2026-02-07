#!/bin/bash

# Task ;
#--------------------
# Show a menu:
# Choose a fruit:
# 1) Apple
# 2) Banana
# 3) Orange
# q) Quit

# Use case to print:
# “You chose Apple” if 1 or apple
# “You chose Banana” if 2 or banana
# “You chose Orange” if 3 or orange
# “Goodbye!” if q/quit
# “Invalid choice” otherwise
# Make input case-insensitive
#----------------------------------

echo "Fruit Menu"
echo "Choose a fruit:"
echo "1) Apple"
echo "2) Banana"
echo "3) Orange"
echo "q) Quit"
echo

read -p "Enter your choice : " choice

case ${choice,,} in

	apple|1)
		echo "You choose Apple !"
	;;
	
	banana|2)
		echo "You choose Banana !"
	;;
	
	orange|3)
		echo "You choose Orange"
	;;
	
	quit|q)
		echo "You choose to quit this program!"
	;;
	
	*)
		echo "Invalid choice"
	;;
esac		
