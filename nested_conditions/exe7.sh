#!/bin/bash

# Exercise  — Command Checker
# Concept: Practical system scripting

read -p "Enter your command here: " cmd
echo

# Get the full path of the command
cmd_path=$(command -v "$cmd")

if [[ -n "$cmd_path" ]]; then  # Check if command exists
# Used -n to check if the path is non-empty (more reliable than -e in this context).
    if [[ -x "$cmd_path" ]]; then
        echo "This command --> $cmd <--- exists and is executable (can be run)"
    else
        echo "This command --> $cmd <--- exists but is not executable (can't be run)"
    fi
else
    echo "Command ---> $cmd <-- not found ❌"
fi
