#!/bin/bash

# Print numbers 1 to 5 using WHILE

num=0
while (( num < 5 )); do
	num=$((num + 1 ))
	echo "$num"
done
