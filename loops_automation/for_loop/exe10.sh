#!/bin/bash

# Exercise -->  Create Multiple Files

read -p "Enter file extension:" extension
read -p "Enter no. of files that you want to create :" total_file

for i in $( seq 1 $total_file ); do # seq --> generates a sequences of number from 1 to $totalfile.
	filename="file$i$extension"
	touch "$filename"
	echo "File created : $filename"
done
