#!/bin/bash

today=$(date)
host=$(hostname)

echo "date : $today"
echo "hostname : $host"

# --------------------------------------------------------
# What does this script do?
# 1. The shebang (#!/bin/bash) tells the system to use the Bash shell to run this script.
# 2. It creates two variables: 'today' and 'host'.
#    - 'today' stores the output of the 'date' command (current date and time).
#    - 'host' stores the output of the 'hostname' command (name of the computer).
# 3. Finally, it prints the values of these variables to the terminal.
#
# --------------------------------------------------------
# Expected output (example):
# date : Thu Jan 22 03:47:25 PM +0545 2026
# hostname : my_computer
