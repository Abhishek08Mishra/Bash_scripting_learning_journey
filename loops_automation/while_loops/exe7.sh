#!/bin/bash

#Exercise 4: Countdown Timer
#Start from 10 and count down to 1 using while.
#Bonus: Print "Blast off!" at the end 🚀

num=11
while (( num != 0 )); do
	num=$(( num -1 ))
	if (( num != 0 )); then
		echo "$num"
		sleep 1
	fi
done
echo "Blast off 🚀️"
