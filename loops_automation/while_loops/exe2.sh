#!/bin/bash

# prints numbers from 1 to 5 using UNTIL

num=0
until (( num == 5 )); do
	num=$(( num + 1 ))
	echo "$num"
done
