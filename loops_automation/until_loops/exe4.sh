#!/bin/bash

# Task --> Write a script that keeps checking until a file named ready.txt exists.

until [[ -f "read.txt" ]]; do
	echo "File does not found"
	sleep 2
done
echo "file found"
