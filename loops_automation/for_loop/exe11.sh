#!/bin/bash
# Exercise --> Batch Rename (Add Suffix)
# Rename all .txt files to add _backup before the extension.

for file in *.txt; do
	base="${file%.txt}" # % Remove shortest match from the end of the value --> .txt
	new_name="${base}_backup.txt"
	mv "$file" "$new_name"
done
