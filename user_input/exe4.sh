#!/bin/bash
 
# create a variable.
myname="Abhishek"

# Export variable so child scripts can access it.
export myname

# print a welcome message
echo "welcome, $myname"


# ------------------------------------------------------------------------------------------
# export command make a shell variable visible to scripts and programs run from that shell.
