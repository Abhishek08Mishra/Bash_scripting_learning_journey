#!/bin/bash

# Default values
VERBOSE=false
NICKNAME=""

# Usage function
usage() {
  echo "Usage: $0 [-v] [-n nickname] name"
  echo "  -v            Enable verbose output"
  echo "  -n NICKNAME   Optional nickname"
  echo "  name          Your real name (required)"
  exit 0
}

# Parse flags
while getopts "vn:" opt; do
  case $opt in
    v) VERBOSE=true ;;
    n) NICKNAME="$OPTARG" ;;
    *) usage ;;
  esac
done

shift $((OPTIND -1))  # remove parsed flags

# Positional argument
NAME=$1

# Validate required argument
if [ -z "$NAME" ]; then
  echo "Error: Name is required."
  usage
fi

# Verbose messages
$VERBOSE && echo "[VERBOSE] Name: $NAME"
$VERBOSE && [ -n "$NICKNAME" ] && echo "[VERBOSE] Nickname: $NICKNAME"

# Output greeting
if [ -n "$NICKNAME" ]; then
  echo "Hello, $NAME! Also known as $NICKNAME."
else
  echo "Hello, $NAME!"
fi
