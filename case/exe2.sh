#!/bin/bash

# Task 2: Simple Calculator
#-------------------------------------
# Goal: Combine case with arithmetic.
# Ask user for an operator: +, -, *, /
# Ask for two numbers
# Use case to perform the operation
# Handle invalid operators
#--------------------------------------

echo "Choose your option :"
echo
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
echo "q) Quit" 
echo
read -p "Enter your choice : " choice
echo
read -p "Enter your first number : " num1
echo
read -p "Enter your second number : " num2
echo

# Validate numbers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input! Please enter integers only."
    exit 1
fi

case $choice in 
	1)
		add=$((num1 + num2))
		echo "The sum of $num1 and $num2 is $add"
	;;
	2)
		sub=$((num1 - num2))
		echo "The difference between $num1 and $num2 is $sub"
	;;
	3)
		mul=$((num1 * num2))
		echo "The product of $num1 and $num2 is $mul"
	;;
	4)
		if (( num2 != 0 )); then
			div=$((num1 / num2))
			echo "The Division of $num1 and $num2 is $div"
		else
			echo "Zero division error!"
			echo "You cannot divide any number by zero"
		fi
	;;
	q)
			echo "Program closed"
	;;
	*)
		echo "Invalid operators"
	;;
esac

