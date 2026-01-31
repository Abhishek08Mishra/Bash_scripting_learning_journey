#!/bin/bash

# Exercise --> List Specific Files
# Display the names of all .sh files in the current directory.

shopt -s nullglob   # Prevents *.sh from being treated as text if no match
for file in *.sh; do
	echo "Files : $file"
done

# ✅ Key Takeaway
# Without nullglob → pattern with no match is treated as a literal file
# With nullglob → pattern with no match is ignored, preventing wrong output
