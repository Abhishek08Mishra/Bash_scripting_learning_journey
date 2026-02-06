#!/bin/bash

# Exercise : 6 -->  Skip Blank Input
# ====================================================
# Task:
# Ask the user to enter text in a loop.
# If the user just presses Enter (empty input), print
# "Input cannot be empty" and continue.
# Otherwise print what they entered.
# If they type "quit", exit the loop
# ======================================================

while true; do
	read -p "Enter your text : " userinput
	
	if [[ "$userinput" == "quit" ]]; then
		echo "Exit from the Loop"
		break
	elif [[ -z  "$userinput" ]]; then # -z means string length zero(empty)
		echo "Input cannot be empty"
		continue
	else
		echo "You typed : $userinput"
	fi
done
