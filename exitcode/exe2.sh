#!/bin/bash

# Try to list a directory that does not exist
if ls /home/does-not-exists; then
    # This block runs if the above command succeeds (exit code 0)
    echo "success"
else
    # This block runs if the previous command fails (exit code != 0)
    echo "failure"
fi

# ----->>> Explanation:
# The command "ls /home/does-not-exists" fails because the directory doesn't exist.
# When a command fails, it returns a non-zero exit code.
# For "ls", the exit code for "no such file or directory" is 2.
# Therefore, the 'else' branch is executed and prints "failure".
# The exit code of the last command (ls) is stored in $? and would be 2.
