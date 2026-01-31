#!/bin/bash

# Exercise : File Counter

count=0

for file in *.txt; do
	count=$(( count +1 ))
done
echo "Total file is $count"
