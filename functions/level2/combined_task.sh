#!/bin/bash

#======================================|
# 1) Function to check file existence. |
#======================================|
fileexists() {
	echo
	read -rp "Enter filename : " filename
	echo
			
	if [[ -f "$filename" ]]; then
		echo "File exists"
		echo
		return 0
	else
		echo "File does not exists"
		echo
		return 1
	fi
}
#===========================================|
# 2) Function to check directory existence. |
#===========================================|
direxists() {
	echo
	read -rp "Enter directory path : " path
			
	if [[ -d "$path" ]]; then
		echo
		echo "Directory exists"
		echo
		return 0
	else
		echo
		echo "Directory does not exits"
		echo
		return 1
	fi
}

#=====================================================|
# 3) Function to count files in given directory path. |
#=====================================================|
countfiles() {
	echo
	read -rp "Enter directory path : " path
	echo
		
	if [[ -d "$path" ]]; then
		local count=$(find "$path" -maxdepth 1 -type f | wc -l)
		echo "Total files in a directory : $count"
		echo
		return 0
	else
		echo "Directory does not exists or invalid input"
		echo
		return 1
	fi
}
#===============================|
# 4) Function to get file size. |
#===============================|
getfilesize(){
	echo
	read -rp "Enter filename : " filename
	echo
			
	if [[ -f "$filename" ]]; then
		local filesize=$(ls -l -s -h "$filename")
		echo "File size"
		echo
		echo "$filesize"
		echo
		return 0
	else
		echo "File does not exists"
		echo
		return 1
	fi
}

#=======================================================|
# 5) Function to create directory if it does not exist. |
#=======================================================| 
createdir() {
	echo
	read -rp "Enter directory name : " dirname
	echo
			
	if [[ -d "$dirname" ]]; then
		echo "Directory exists"
		echo
		return 0
	else
		echo "Directory does not exists"
		echo
		echo "Creating directory........"
		echo
		sleep 3
		mkdir "$dirname"
		echo "Directory Created : $dirname"
		echo
		return 0
	fi
}


while true; do
	clear
	echo
	echo "-------------------"
	echo "Files & Directories"
	echo "-------------------"
	echo
	echo "1) Check file exists"
	echo "2) Check Directory exists"
	echo "3) Count files in a directory"
	echo "4) Get file size"
	echo "5) Create directory if not exists"
	echo "q) Quit"
	echo
	
	read -p "Enter your option: " choice
	
	case "${choice,,}" in 
	1)
		fileexists
		echo "Exits status :" $?
		;;
		
	2)
		direxists
		echo "Exits status :" $?
		;;
		
	3)
		countfiles
		echo "Exits status :" $?

		;;
		
	4)

		getfilesize
		echo "Exits status :" $?
		;;
		
	5)
		createdir
		echo "Exits status :" $?
		;;
		
	q|quit|exit)
		echo
		echo "Program Terminated"
		echo
		echo "Exits status :" $?
		break
		;;
	*)
		echo
		echo "Invalid input or option selection!"
		;;
		
	esac
	echo
	read -p  "Press enter to continue......."
done
