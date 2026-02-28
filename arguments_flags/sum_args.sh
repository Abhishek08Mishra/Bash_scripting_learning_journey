#!/bin/bash

# Input validation
if [[ "$#" != 2 ]]; then
	echo "Error: Exactly 2 arguments are required"
	exit 1
fi

num1=$1
num2=$2

#Validate number
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
	echo "Error: Arguments must be integers"
	exit 1
fi 

add=$((num1 + num2))

echo "-------------------------------------"
echo "Script name : $0"
echo "First number : $1"
echo "Second number : $2"
echo "Sum : $add"
echo "All arguments : $@"
echo "Number of arguments : $#"
echo "-------------------------------------"

echo "Arguments look good"
exit 0
