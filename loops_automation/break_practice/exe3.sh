#!/bin/bash

number=(1 3 7 9 11 12 15)

for num in "${number[@]}"; do # [@] use to loop through all numbers in the array to check even number
	if (( num % 2 == 0 )); then
		echo "Even number found : $num"
		break
	else
		echo "$num"
	fi
done
