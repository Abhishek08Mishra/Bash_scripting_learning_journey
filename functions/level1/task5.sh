#!/bin/bash

# Task 5: Function to print OS name and kernel version

get_os_name_kversion() {
	local osname=$(uname -o)
	local kernelversion=$(uname -v)
	
	echo "Operating system name = $osname"
	echo
	echo "Kernel Version = $kernelversion"
	echo
}

get_os_name_kversion
