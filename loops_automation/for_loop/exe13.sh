#!/bin/bash

# Exercise --> Check File Existence from List
# Loop through list and report if each file exists:

count=0
for file in *.sh; do
	if [[ -e "$file" ]]; then
		count=$((count +1 ))
		echo "File exist: $file"
	fi
done
echo
echo "Total file with .sh extension exists is $count"
