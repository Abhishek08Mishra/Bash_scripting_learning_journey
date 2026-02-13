#!/bin/bash

# Task 13: Function to safely change permissions after confirmation

change_permissions() {
	# Ask for file
	read -rp "Enter filename : " filename
	
	# Check file existence
	if ! [[ -e "$filename" ]]; then
		echo "File does not exists!"
		return 1
	fi
	
	#show Current permission of the file
	# stat -c "%a" filename --> it shows the permissions of the file in number like 775
	current_perm=$(stat -c "%a" "$filename" 2>/dev/null)
	echo "Current permission : $current_perm"
	
	# Ask for new permission of the file
	read -rp "Enter permission (e.g., 755, 777, 744) : " new_perm
	
	# Validate new permission
	if ! [[ "$new_perm" =~ ^[0-7]{3}$ ]]; then
		echo "Error:Invalid permission format"
		return 1
	fi
	
	
	echo "You are about to change:"
    	echo "File: $filename"
    	echo "From: $current_perm"
    	echo "To:   $new_perm"

    	# Explicit confirmation
    	read -p "Type yes to confirm: " confirm
    	if [[ "$confirm" != "yes" ]]; then
        		echo "Operation canceled."
        		return 0
    	fi

    	# Apply change
    	if chmod "$new_perm" "$filename"; then
        		echo "Permissions successfully updated."
    	else
        		echo "Failed to change permissions."
        		return 1
    	fi 
	
}
change_permissions
