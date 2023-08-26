#!/bin/bash

username="kailun1103"
expected_inactive_days=30

inactive_days=$(chage -l "$username" | grep "Inactive:" | awk -F: '{print $2}' | tr -d ' ')
if [ "$inactive_days" -eq "$expected_inactive_days" ]; then
    echo "The inactive days for user $username are correctly set to $expected_inactive_days"
else
    echo "The inactive days for user $username are not set to $expected_inactive_days"
fi

