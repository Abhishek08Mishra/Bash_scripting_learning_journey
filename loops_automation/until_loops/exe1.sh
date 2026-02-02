#!/bin/bash

# print numbers from 1 - 5 using UNTIL

num=0
until (( num == 5 )); do 
	num=$(( num + 1 ))
	echo "$num"
done
