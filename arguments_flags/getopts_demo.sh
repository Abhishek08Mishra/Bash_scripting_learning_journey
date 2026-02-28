#!/bin/bash

VERBOSE=false

while getopts "v" opt; do
	case $opt in
		v) VERBOSE=true
	;;
	esac
done

shift $((OPTIND - 1))

echo "Verbose: $VERBOSE"
echo "Remaining arguments: $@"
