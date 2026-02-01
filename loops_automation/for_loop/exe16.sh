#!/bin/bash

# Backup all bash(.sh) file in a single file.
for file in *.sh; do
	cat "$file" >> backup.txt
done
echo "All Backup completed"
