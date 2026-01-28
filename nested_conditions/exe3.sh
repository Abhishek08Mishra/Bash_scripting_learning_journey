#!/bin/bash

## 🔹 Exercise : File Inspector

# **Goal:** Nested file condition checks

#  Ask the user for a filename and then:

#1. If the file **exists**

#   * If it is a **regular file**
#
 #    * Check if it is **readable**

#       * If yes → “File exists and is readable”
 #      * If no → “File exists but is not readable”
  # * Else if it is a **directory**
#
 #    * → “It’s a directory, not a regular file”
#2. Else
#
 #  * → “File does not exist”

#*Hints:* Use:

#* `-e` (exists)
#* `-f` (regular file)
#* `-d` (directory)
#* `-r` (readable)


read -p "Enter your filename:" fname

if [[ -e "$fname" ]]; then
	if [[ -f "$fname" ]]; then
		if [[ -r "$fname" ]]; then
			echo "Yes, the file exists and is readable."
		else
			echo "Yes, the file exists and is not readable."
		fi
	elif [[ -d "$fname" ]]; then
		echo "Yes, it's a directory, not a regular file."
	fi
else
	echo "File does not exist."
fi
