#!/bin/bash

read -p "Enter anything : " text

if [[ -z "$text" ]]; then
	echo "Empty input"
else
	echo "You entered : $text"
fi
