#!/bin/bash

# Task 5: Function to print OS name and kernel version


 # -a, --all                print all information, in the following order,
 #                            except omit -p and -i if unknown:
 # -s, --kernel-name        print the kernel name
 # -n, --nodename           print the network node hostname
 # -r, --kernel-release     print the kernel release
 # -v, --kernel-version     print the kernel version
 # -m, --machine            print the machine hardware name
#  -p, --processor          print the processor type (non-portable)
 # -i, --hardware-platform  print the hardware platform (non-portable)
 # -o, --operating-system   print the operating system


get_name_version() {
	local osname=$(uname -o)
	local kernelversion=$(uname -v)
	
	echo "Operating system name = $osname"
	echo
	echo "Kernel Version = $kernelversion"
	echo
}

get_name_version
