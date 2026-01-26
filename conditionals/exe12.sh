#!/bin/bash

# Exercise  — Ask for a secret word. Print “Correct!” if it matches a preset word, else “Try again”.


secrete_word="hello,mr.robot"

# Asking secrte word from the user
read -sp "Enter your word here : " word
echo
# Check conditions
if [[ "$word" == "$secrete_word" ]]; then
	echo "Correct!"
else
	echo "Try Again"
fi 
