#!/bin/bash

VERBOSE=false

usage () {
	echo "Usage : $0 [-v] num1 num2"
	echo "-v 		Enable verbose output"
	exit 1
}

while getopts "v" opt; do
	case "$opt" in
		v) VERBOSE=true ;;
		*) usage ;;
	esac
done

shift $(( OPTIND -1 )) 

# Input validation
if [[ "$#" != 2 ]]; then
	echo "Error: Exactly 2 arguments are required"
	usage
	exit 1
fi

num1=$1
num2=$2

#Validate number
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
	echo "Error: Arguments must be integers"
	exit 1
fi 

add=$((num1 + num2))

# Verbose output
$VERBOSE && echo "[VERBOSE] Script name: $0"
$VERBOSE && echo "[VERBOSE] First number: $num1"
$VERBOSE && echo "[VERBOSE] Second number: $num2"
$VERBOSE && echo "[VERBOSE] Total arguments: $#"
$VERBOSE && echo "[VERBOSE] All arguments: $@"

# Main output
echo "Sum: $add"

exit 0
