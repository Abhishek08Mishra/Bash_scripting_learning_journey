#!/bin/bash

VERBOSE=false
SOURCE=""
DESTINATION=""

# Help function
help_message() {
	echo "Usage: $0 -s <source_dir> -d <dest_dir> [-v]"
	exit 1
}

# Logging function
log() {
    $VERBOSE && echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] $1"
}


# Parse option
while getopts "s:d:vh" opt; do
	case "$opt" in
		s) SOURCE="$OPTARG" ;;
		d) DESTINATION="$OPTARG" ;;
		v) VERBOSE=true ;;
		h) help_message ;;
		*) help_message ;;
	esac
done

#Validate input
if [[ -z "$SOURCE" || -z "$DESTINATION" ]]; then
	echo "Error: Source and destination path are required"
	exit 1
fi

# Checking source  directory existence
if ! [[ -e "$SOURCE" ]]; then
	echo "Error: Source directory does not exists"
	exit 2
fi

#Checking destination directory existence
if ! [[ -d "$DESTINATION" ]]; then
	echo "Error: Destination directory does not exists"
	exit 3
fi

#Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BASENAME=$(basename "$SOURCE")
ARCHIVE_NAME="${BASENAME}_${TIMESTAMP}.tar.gz"

log "Creating backup of $SOURCE ..."

tar -czf "$DESTINATION/$ARCHIVE_NAME" -C "$(dirname "$SOURCE")" "$BASENAME"

if [[ $? -eq 0 ]]; then
    log "Backup successful: $DESTINATION/$ARCHIVE_NAME"
    exit 0
else
    echo "Backup failed"
    exit 4
fi
