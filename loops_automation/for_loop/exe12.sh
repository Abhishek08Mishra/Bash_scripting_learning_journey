#!/bin/bash

# Exercise --> Word Count Per File. 

for file in *.sh; do
	count=$( wc -w < "$file" )
	echo "$file : $count words"
done

#==========================
# Notes 
#==========================
# wc --> word count utility
# w ---> count words
# The < is input redirection. It tells Bash:
# “Use this file as the command’s input instead of giving the filename as an argument.”
