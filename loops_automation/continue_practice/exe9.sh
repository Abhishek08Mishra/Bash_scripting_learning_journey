#!/bin/bash

# Exercise -->  Skip Specific Letter
#------------------------------------
# Task:
# Loop through each letter in the word:
# programming
# Skip the letter "g" using continue.
# Print all other letters one per line.
#---------------------------------------

word="programming"

tr -d 'g' <<< "$word" | grep -o .



#*******************************************************
# Command		Job
# ---------	-----
# tr -d 'g'	Deletes all g characters
# grep -o .	Splits into one character per line
