#!/bin/bash

# prints odd numbers from {1..10}

for i in {1..10}; do
	if  (("$i" % 2 == 0 )); then
		continue
	fi
	echo "$i"
done
