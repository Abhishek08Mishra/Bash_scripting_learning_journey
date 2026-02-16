#!/bin/bash

#========================================|
# 1) Functions to check file readability.|
#========================================|
file_check() {
	
	echo
	# Ask for filename or file path
	read -rp "Enter file name (e.g, ./task11.sh, task15.sh): " filename
	
	# Check file existence
	if ! [[ -e "$filename" ]]; then
		echo
		echo "File does not exist or invalid path"
		return 1
	fi
	
	# Check regular file and file readability
	if [[ -f "$filename" ]]; then
		if [[ -r "$filename" ]]; then
			echo
			echo "File is readable"
		else
			echo
			echo "File is Not readable"
		fi
	else
		echo
		echo "Path exists but not a regular file"
	fi
}

#=================================================|
# 2) Functions to check file executable permission|
#=================================================|
check_file_executable_permission() {
	echo
	# Ask for file path
	read -rp "Enter file path (e.g, ./task11.sh, task15.sh) : " path
	
	# Check file existence
	if ! [[ -e "$path" ]]; then
		echo
		echo "File does not exists or invalid path"
		return 1
	fi
	
	# Check for regular files and executable permission
	if [[ -f "$path" ]]; then
		if [[ -x "$path" ]]; then
			echo
			echo "File is executable"
		else
			echo
			echo "File is not executable"
		fi
	else
		echo
		echo "Path exists but not a regular file"
	fi
}
#===========================================================================================|
# 3) Functions to check permission of given path by user and safe change permission on the  | confirmation of user.							  |
#===========================================================================================|
safe_change_permission() {
	echo
	# Ask for path from the user
	read -rp "Enter path : " path
	echo
	
	# Check file existence
	if ! [[ -e "$path" ]]; then
		echo "Path does not exists or invalid path"
		return 1
	fi
	
	# Check given path is directory or file or not and display file permission.
	if [[ -d "$path" ]]; then
		echo "It's a directory!"
		echo
		echo "Current permission : $(stat -c "%a" "$path" 2>/dev/null)"
		echo			
	elif [[ -f "$path" ]]; then
		echo "It's a file!"
		echo
		echo "Current permission : $(stat -c "%a" "$path" 2>/dev/null)"
	else
		echo "Path exists but not a regular file or directory"
	fi
	
	# Ask for permission	
	read -p "Enter permission : (e.g., 755, 444, 770) : " perm
	echo
	
	# Check permission validation	
	if ! [[ "$perm" =~ ^[0-7]{3}$ ]]; then
		echo "Error : Invalid input format!"
		return 1
	fi
					
	echo "You are about to change permission"
	echo "From : $(stat -c "%a" "$path" 2>/dev/null)"
	echo "To : $perm"
	echo
	read -p "Type yes to confirm : " choice
	
	if [[ "${choice,,}" != "yes" ]]; then
		echo
		echo "Operation canceled"
		return 1
	fi
			
	# Granting permission if user type "yes"
	chmod "$perm" "$path"
	echo
	echo "Permission successfully updated !"
	echo
}	
#==================================================|
# 4) Function to find file size based on user input|
#==================================================|
find_files_size(){
	echo
	
	# Ask for directory path.	
	read -rp "Enter directory path: " path
	echo
	
	# Ask for file size in MB.
    	read -rp "Enter file size in MB: " size
	echo
	
    	# Path validation
    	if [[ ! -d "$path" ]]; then
        		echo "Invalid directory path"
        		return 1
    	fi

   	# Validate size input (must be a number)
    	if ! [[ "$size" =~ ^[0-9]+$ ]]; then
       		echo "Invalid size. Enter a numeric value."
        		return 1
    	fi
	
	echo
    	echo "Files larger than ${size}MB in $path:"
   	echo "---------------------------------------"
	echo
	find "$path" -type f -size +"${size}"M -exec du -BM {} + -perm 700 2>/dev/null | sort -rn
    	echo
}

#=================================================================|
# 5) Function to find modified files in N days based on user input|
#=================================================================|
modified_files() {
	echo
	# Ask for path from the user.
	read -rp "Enter path : " path
	echo
	
	# Ask for no. of day to find modified files in N days
	read -p "Enter no. of day (e.g., -8, +8, 8) to find modified files in that day : " moddays
	echo
	
	# Check Path validation	
	if ! [[ -d "$path" ]]; then 
		echo "Path does not exists or Invalid path selection"
		return 1
	fi
	
	# Validation for no. of day	
	if ! [[ "$moddays" =~ ^[+-]?[0-9]+$ ]]; then
		echo "Please enter valid  integer values like (e.g., 1,2,3,....n)"
		return 1
	fi
		
	# Finding modified files in given day by the user
	find "$path" -type f -mtime "$moddays"
}

while true; do
	clear
	echo "██╗  ██╗███████╗██╗  ██╗███████╗██╗  ██╗███████╗██╗     ██╗     "
	echo "██║  ██║██╔════╝╚██╗██╔╝██╔════╝██║  ██║██╔════╝██║     ██║     "
	echo "███████║█████╗   ╚███╔╝ ███████╗███████║█████╗  ██║     ██║     "
	echo "██╔══██║██╔══╝   ██╔██╗ ╚════██║██╔══██║██╔══╝  ██║     ██║     "
	echo "██║  ██║███████╗██╔╝ ██╗███████║██║  ██║███████╗███████╗███████╗"
	echo "╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝"
	echo
	echo "	============================================="
	echo "			HexShell v1.0		     "
	echo " 	Command the system, unseen and unstoppable.  "
	echo "	============================================="
	echo
	echo "Select an option"
	echo "-----------------"
	echo "1) Check File readability permission"
	echo "2) Check File executable permission"
	echo "3) Safe change permission"
	echo "4) Find files larger than X MB"
	echo "5) Find files modified in last N days"
	echo "q) Quit"
	echo
	read -p "Enter option : " option
	
	case "${option,,}" in
	
	1)
		# Function call for file readability
		file_check
		status=$?
		echo
		echo "Exit status: $status"
		;;
	
	2)
		# Function call for file executable permission
		check_file_executable_permission
		status=$?
		echo
		echo "Exit status: $status"
		;;
		
	3)
		# Function call for safe change permission on user confirmation
		safe_change_permission
		status=$?
		echo
		echo "Exit status: $status"
		;;
	
	4)
		# Functions call to find file size on user input
		find_files_size
		status=$?
		echo
		echo "Exit status: $status"
		;;
		
	5)
		# Function call to find modified files on N days based on user input
		modified_files
		status=$?
		echo
		echo "Exit status: $status"
		;;
		
	# Break the loop and exit from the program if user type "q,Q,Quit,quit,exit,EXIT, when program ask to enter an option from the menu for further processing "	
	q|quit|exit)
		echo
		echo "Program Terminated"
		break
		;;
		
	*)
		# Prints error message , if user enter invalid option outside from the menu.
		echo
		echo "Invalid option"
		;;
	
	esac
	echo
	read -p "Press enter to continue...."
	echo
done
