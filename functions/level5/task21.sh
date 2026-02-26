#!/bin/bash

#!/bin/bash

# Task 21: Function to check if a port is open

check_open_port() {

    echo "State    Open port              Process name and PID"
    echo "-----------------------------------------------------------"

    ss -tulpn | awk '
    $2 == "LISTEN" {
        printf "%-8s %-22s %s\n", $2, $5, $7
    }'
}

check_open_port
