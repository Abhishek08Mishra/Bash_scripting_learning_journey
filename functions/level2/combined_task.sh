#!/bin/bash

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
		fileexists() {
			echo
			read -p "Enter filename : " filename
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
		fileexists
		echo "Exits status :" $?
		echo
		;;
	2)
		direxists() {
			echo
			read -p "Enter directory path : " path
			echo
			
			if [[ -d "$path" ]]; then
				echo "Directory exists"
				echo
				return 0
			else
				echo "Directory does not exits"
				echo
				return 1
			fi
		}
		direxists
		echo "Exits status :" $?
		echo
		;;
	3)
		countfiles() {
			echo
			read -p "Enter directory path : " path
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
		countfiles
		echo "Exits status :" $?
		echo
		;;
	4)
		getfilesize(){
			echo
			read -p "Enter filename : " filename
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
		getfilesize
		echo "Exits status :" $?
		echo
		;;
	5)
		createdir() {
			echo
			read -p "Enter directory name : " dirname
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
				return 1
			fi
		}
		createdir
		echo "Exits status :" $?
		echo
		;;
	q|quit|exit)
		echo
		echo "Program Terminated"
		echo
		echo "Exits status :" $?
		break
		;;
	esac
	echo
	read -p  "Press enter to continue......."
done
