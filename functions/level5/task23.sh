#!/bin/bash

# Task 23: Function to ping a host and log the result

log_ping() {

    read -p "Enter host: " target

    if [[ -z "$target" ]]; then
        echo "Error: No target or host-name provided"
        return 1
    fi

    local timestamp
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")

    local logfile="ping.log"
    local status

    if ping -c 2 -W 2 "$target" > /dev/null 2>&1; then
        status="SUCCESS"
    else
        status="FAILURE"
    fi

    echo "$timestamp - $target - $status" >> "$logfile"

    echo "Result logged in $logfile"
}

log_ping
