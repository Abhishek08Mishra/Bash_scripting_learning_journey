#!/bin/bash

if ls /home; then
	echo "success"
else
	echo "failed"
fi

# --->>>  Prints "Success" because ls /home succeeded (exit code 0)



# ==============================
# What is an Exit Code?
# ==============================

# Every command in Bash returns a number when it finishes.
# This number is called the "exit code" (or return code).

# Rule:
# 0         → Success (✅)
# 1–255     → Failure or specific error (❌)

# Bash stores the exit code of the last command in $? 
