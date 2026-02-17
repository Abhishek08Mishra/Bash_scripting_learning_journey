#!/bin/bash

# Task 17: Function to print top 5 memory-using processes

top_memory_processes() {
    echo "Top 5 processes by memory usage:"
    echo "================================"
    echo
    echo "USER      PID %MEM 	COMMAND"
    ps aux --sort=-rss | head -n 6 | awk 'NR>1 {print $1, $2, $4, $11}'
}

top_memory_processes
