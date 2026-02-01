#!/bin/bash

# Backup all bash(.sh) file in a single file.
timestamp=$(date +%Y%m%d_%H%M%S)
for file in *.sh; do
    cat "$file" >> "backup_$timestamp.txt"
done
echo "Backup saved as backup_$timestamp.txt"
