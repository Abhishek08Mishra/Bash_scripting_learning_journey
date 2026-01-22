#!/bin/bash

read -sp "password : " password
echo 
echo "password recevied!"


#The read command with the -s option hides the user’s input (password-style), and the -p option displays the prompt text on the same line without moving to a new line. After the user presses Enter, no newline is printed automatically, so echo with no arguments is used to print a newline. The following echo command then prints the message “password received” on a new line.# The read command with option -s hides the input like password style and -p option means to print the user input in the same line , then echo with no arguments prints the newline and after that echo command in third line prints password received 
