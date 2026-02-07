#!/bin/bash

# Exercise -->  Nested Loop Skip Multiples
# -----------------------------------------
# Task:
# Outer loop: numbers 1 to 3
# Inner loop: numbers 1 to 5
# If the inner loop number is a multiple of 2, skip it using continue
# Print the rest in this format:
# i=<outer> j=<inner>
#-----------------------------------------------------------------------

for i in {1..3}; do # Outer Loop
	for j in {1..5}; do # Inner Loop
		if (( j % 2 == 0 )); then
			continue
		fi
		echo "i=$i  j=$j"
	done
done

# output -->
# i=1  j=1
# i=1  j=3
# i=1  j=5
# i=2  j=1
# i=2  j=3
# i=2  j=5
# i=3  j=1
# i=3  j=3
# i=3  j=5



#-------------------------------
# Visual Timeline of Execution
#------------------------------
# i=1 starts
# 	j=1 → print
# 	j=2 → skip
#  	j=3 → print
#  	j=4 → skip
#  	j=5 → print
# i=1 ends


# i=2 starts
#  	j=1 → print
#  	j=2 → skip
#  	j=3 → print
#  	j=4 → skip
#  	j=5 → print
# i=2 ends


# i=3 starts
#  	j=1 → print
#  	j=2 → skip
#  	j=3 → print
#  	j=4 → skip
#	j=5 → print
# i=3 ends
#----------------------------------
