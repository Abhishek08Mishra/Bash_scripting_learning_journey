#!/bin/bash

# Exercise --> Loop Through Arguments
# Print each command-line argument on a new line with its position number.

for fruit in "$@"; do
	echo "I love $fruit"
done
