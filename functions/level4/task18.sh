#!/bin/bash

# Task 18: Function to print CPU usage
#-----------------------------------------

# The function measures CPU activity for 1 second, gets the idle percentage, subtracts it from 100, and prints the CPU usage.
get_cpu_usage() {
    mpstat 1  | awk '/all/ {print 100 - $NF "%"}'
}
get_cpu_usage
