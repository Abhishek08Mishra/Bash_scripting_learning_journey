#!/bin/bash

# Task 19: Function to check disk usage and warn if >80%

get_disk_usage() {
    # Get disk usage of root in numeric form (strip %)
    usage=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

    if [[ $usage -gt 80 ]]; then
        echo "Warning 🚨 : $usage% disk used"
        return 1
    else
        available=$((100 - usage))
        echo "Enough storage : $available% available"
        return 0
    fi
}

# Call the function
get_disk_usage
status=$?
echo "Exit status : $status"
