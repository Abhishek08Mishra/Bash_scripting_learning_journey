#!/bin/bash

while true; do
	clear
	echo "-----------------"
	echo "System Awareness"
	echo "-----------------"
	echo
	echo "1) Display Host Name"
	echo "2) Display Current User"
	echo "3) Display system uptime"
	echo "4) Display current date and time"
	echo "5) Display OS name and Kernel version"
	echo "q) Quit or Exit"
	echo
	read -p "Select an option : " opt
	echo
	
	case "${opt,,}" in
	1)
		get_hostname() {
			local hname=$(hostname)
			echo "Host name : $hname"
		}
		get_hostname
		;;
	
	2)
		get_currentuser() {
			local curruser=$(whoami)
			echo "Current User : $curruser"
		}
		get_currentuser
		;;

	3)
		get_sysuptime() {
			local syuptme=$(uptime)
			echo "System Uptime : $syuptme"
		}
		get_sysuptime
		;;
	
	4)
		get_date_time() {
			local currdatime=$(date)
			echo "Current date and time : $currdatime"
		}
		get_date_time
		;;
	
	5)
		get_os_kernel() {
			local osname=$(uname -o)
			echo "Operating System name : $osname"
			echo
			local kernelversion=$(uname -v)
			echo "Kernel Version : $kernelversion "
			echo
		}
		get_os_kernel
		;;
	
	q|e|quit|exit)
		echo "Program Terminated 💻️"
		break
		echo
		;;
	
	*)
		echo "Invalid option! Try Again"
		;;
	esac
	echo
	read -p "Press enter to continue....."
	echo
done
