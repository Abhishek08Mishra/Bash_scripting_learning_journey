#!/bin/bash

echo "script name : $0"
echo "First arguments : $1"
echo "Second arguments : $2"
echo "All Arguments : $@"
echo "Number of arguments $#"


# output :
# ---> ./args_demo.sh apple banana orange
#-----------------------------------------
# script name : ./args_demo.sh
# First arguments : apple
# Second arguments : banana
# All Arguments : apple banana orange
# Number of arguments 3
#-----------------------------------------
