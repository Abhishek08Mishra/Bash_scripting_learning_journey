#!/bin/bash

# Task --> Countdown timer ⏳️

num=11
until [[ "$num" == 1 ]]; do 
	num=$(( num - 1 ))
	echo "$num"
	sleep 1
done
