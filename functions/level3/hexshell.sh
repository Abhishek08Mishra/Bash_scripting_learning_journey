#!/bin/bash

file_check() {
	
	read -rp "Enter file name (e.g, ./task11.sh, task15.sh): " filename
	
	if ! [[ -e "$filename" ]]; then
		echo "File does not exist or invalid path"
		return 1
	fi
	
	if [[ -f "$filename" ]]; then
		if [[ -r "$filename" ]]; then
			echo "File is readable"
		else
			echo "File is Not readable"
		fi
	else
		echo "Path exists but not a regular file"
	fi
}

check_file_executable_permission() {
	
	read -rp "Enter file path (e.g, ./task11.sh, task15.sh) : " path
	
	if ! [[ -e "$path" ]]; then
		echo "File does not exists or invalid path"
		return 1
	fi
	
	if [[ -f "$path" ]]; then
		if [[ -x "$path" ]]; then
			echo "File is executable"
		else
			echo "File is not executable"
		fi
	else
		echo "Path exists but not a regular file"
	fi
}

safe_change_permission() {
		
	read -rp "Enter path : " path
			
	if ! [[ -e "$path" ]]; then
		echo "Path does not exists or invalid path"
		return 1
	fi
			
	if [[ -d "$path" ]]; then
		echo "It's a directory!"
		echo "Current permission : $(stat -c "%a" "$path" 2>/dev/null)"
				
	elif [[ -f "$path" ]]; then
		echo "It's a file!"
		echo "Current permission : $(stat -c "%a" "$path" 2>/dev/null)"
	else
		echo "Path exists but not a regular file or directory"
	fi
			
	read -p "Enter permission : (e.g., 755, 444, 770) : " perm
			
	if ! [[ "$perm" =~ ^[0-7]{3}$ ]]; then
		echo "Error : Invalid input format!"
		return 1
	fi
						
	echo "You are about to change permission"
	echo "From : $(stat -c "%a" "$path" 2>/dev/null)"
	echo "To : $perm"
	read -p "Type yes to confirm : " choice
	if [[ "${choice,,}" != "yes" ]]; then
		echo "Operation canceled"
		return 1
	fi
			
	# Granting permission if user type "yes"
	chmod "$perm" "$path"
	echo "Permission successfully updated !"
}	

find_files_size(){
			
	read -rp "Enter directory path: " path
    	read -rp "Enter minimum file size in MB: " size

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

    	echo "Files larger than ${size}MB in $path:"
   	echo "---------------------------------------"

	find "$path" -type f -size +"${size}"M -exec du -BM {} + -perm 700 2>/dev/null | sort -rn

    	echo
}

modified_files() {
	read -rp "Enter path : " path
	read -p "Enter no. of day (e.g., -8, +8, 8) to find modified files in that day : " moddays
			
	if ! [[ -d "$path" ]]; then 
		echo "Path does not exists or Invalid path selection"
		return 1
	fi
			
	if ! [[ "$moddays" =~ ^[+-]?[0-9]+$ ]]; then
		echo "Please enter valid  integer values like (e.g., 1,2,3,....n)"
		return 1
	fi
			

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
		file_check
		status=$?
		echo "Exit status: $status"
		;;
	
	2)
		check_file_executable_permission
		status=$?
		echo "Exit status: $status"
		;;
		
	3)
		safe_change_permission
		status=$?
		echo "Exit status: $status"
		;;
	
	4)
		
		find_files_size
		status=$?
		echo "Exit status: $status"
		;;
		
	5)
		modified_files
		status=$?
		echo "Exit status: $status"
		;;
		
	q|quit|exit)
	
		echo "Program Terminated"
		break
		;;
		
	*)
		echo "Invalid option"
		;;
	
	esac
	echo
	read -p "Press enter to continue...."
done
