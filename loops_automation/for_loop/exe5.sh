#!/bin/bash

# Arguments Magic
# Exercise : Greet Your Friends
for name in "$@"; do # "$@" --> Means all the words given after the script name when you run it
	echo "Hello, $name !"
done
