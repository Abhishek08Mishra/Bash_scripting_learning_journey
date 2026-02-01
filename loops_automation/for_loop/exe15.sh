#!/bin/bash

# Exercise --> Sum Numbers
# Use a loop to calculate the sum of numbers from 1 to 100.


sum=0
for num in {1..100}; do
	sum=$(( sum + num ))
done
echo "Total : $sum"
