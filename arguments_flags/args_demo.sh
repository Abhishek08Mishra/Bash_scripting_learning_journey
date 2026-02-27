#!/bin/bash

echo "script name : $0"
echo "First arguments : $1"
echo "Second arguments : $2"
echo "All Arguments : $@"
echo "Number of arguments $#"

# Input validation
if [[ $# -lt 2 ]]; then
	echo "Error: you must provide 2 arguments at least"
	exit 1
fi

echo "Arguments looks good"
exit 0

# output :
# ---> ./args_demo.sh apple banana orange
#-----------------------------------------
# script name : ./args_demo.sh
# First arguments : apple
# Second arguments : banana
# All Arguments : apple banana orange
# Number of arguments 3
#-----------------------------------------
