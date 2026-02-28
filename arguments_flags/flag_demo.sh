#!/bin/bash

if [[ "$1" = "-v" ]]; then
	echo "Verbose mode activated !"
	shift
fi

echo "Remaining arguments:$@"
