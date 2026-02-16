#!/bin/bash

#===================================================|
# 1) Function to display host name on the terminal. |
#===================================================|
get_hostname() {
	local hname=$(hostname)
	echo "Host name : $hname"
}


#================================================================|
# 2) Function to get current user and display it on the terminal.|
#================================================================|
get_currentuser() {
	local curruser=$(whoami)
	echo "Current User : $curruser"
}


#===================================|
# 3) Function to get system uptime. |
#===================================|
get_sysuptime() {
	local syuptme=$(uptime)
	echo "System Uptime : $syuptme"
}


#===========================================|
# 4) Function to get current date and time. |
#===========================================|
get_date_time() {
	local currdatime=$(date)
	echo "Current date and time : $currdatime"
}


#==============================================================|
# 5) Function to get operating system name and kernel version. |
#==============================================================|
get_os_kernel() {
	local osname=$(uname -o)
	echo "Operating System name : $osname"
	echo
	local kernelversion=$(uname -v)
	echo "Kernel Version : $kernelversion "
	echo
}


while true;do
	clear
	echo
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
		get_hostname
		;;
	
	2)
		get_currentuser
		;;

	3)
		get_sysuptime
		;;
	
	4)
		get_date_time
		;;
	
	5)
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
