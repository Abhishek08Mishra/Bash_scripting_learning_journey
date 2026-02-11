#!/bin/bash

# Task 4: Function to print current date & time

get_date_time() {
	local date_time=$(date)
	echo "Current date and time : $date_time"
}

get_date_time
