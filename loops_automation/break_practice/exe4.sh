#!/bin/bash

# Task:
# Write a script that keeps asking the user to type a word.
# If the user types "stop", print "Loop stopped!" and exit the loop.
# Otherwise, print "You typed: <word>" and ask again.

while true ; do 
	
	read -p "Enter your word : " userinput
	
	if [[ "$userinput" == "stop" ]]; then
		echo "Loop stopped"
		echo
		break
	else
		echo "You typed : $userinput"
		echo
	fi
done
		
