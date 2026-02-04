#!/bin/bash

# Nested Loop Break
# Loop i from 1 to 5.
# Inside that, loop j from 1 to 5.
# If i + j equals 6 → print "Found combination: i j" and break only the inner loop.
# Observe what happens to the outer loop.

for i in {1..5};do
	for j in {1..5};do
		if (( i + j == 6 )); then
			echo "Found combination : $i $j"
			break
		fi
	done
done

# output ---->
#Found combination : 1 5
#Found combination : 2 4
#Found combination : 3 3
#Found combination : 4 2
#Found combination : 5 1
