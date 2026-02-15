#!/bin/bash

check_file_size() {

    read -rp "Enter directory path: " path
    read -rp "Enter minimum file size in MB: " size

    # Path validation
    if [[ ! -d "$path" ]]; then
        echo "Invalid directory path"
        return 1
    fi

    # Validate size input (must be a number)
    if ! [[ "$size" =~ ^[0-9]+$ ]]; then
        echo "Invalid size. Enter a numeric value."
        return 1
    fi

    echo "Files larger than ${size}MB in $path:"
    echo "---------------------------------------"
    
    find "$path" -type f -size +"${size}"M -exec du -BM {} + -perm 700 2>/dev/null | sort -rn

}

check_file_size
statuscode=$?
echo "Exit status : $statuscode"
