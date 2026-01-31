#!/bin/bash

# Exercise --> Count Files by Extension
# Count how many .sh files are in a folder.

shopt -s nullglob # prevents *.sh from being treated as text if no match found.
count=0
for files in *.sh; do
	count=$(( count + 1 ))
done
echo "Total bash files(.sh) is $count."
