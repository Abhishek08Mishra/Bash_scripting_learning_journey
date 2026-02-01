#!/bin/bash

#----------------|
# File Organizer |
#----------------|

# Asking for file extensions
read -p "Enter file extensions: " ext

dir=organized_extensions

# mkdir "$dir"

if [[ -d "$dir" ]]; then
	echo "Folder already existed!"
else
	mkdir "$dir" && echo "Floder successfully created : $dir"
fi

shopt -s nullglob 
count=0
for file in *"$ext"; do
	count=$(( count +1 ))
	mv "$file" "$dir"
done
echo "Total moved : $count"
