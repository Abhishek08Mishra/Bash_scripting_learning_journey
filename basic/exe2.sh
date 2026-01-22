#!/bin/bash

read -p "Enter your name : " name

echo "Welcome, $name ! "

# The read command with the -p option is used to take user input on the same line,
# so there is no need for a separate echo command.
# While taking input, the variable name should be written without the $ sign.
# The $ sign is only used when accessing the value of the variable, not when assigning input.
