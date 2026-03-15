#!/bin/bash

read -rp "Enter filename : " filename

if ! [[ -f "$filename" ]]; then
	echo "File not found❌️"
	exit 1
fi

lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
chars=$(wc -c < "$filename")

echo "-----------------------"
echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $chars"
echo "-----------------------"
