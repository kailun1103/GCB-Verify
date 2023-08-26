#!/bin/bash
# Set initial boolean value to false
success=false

# Define the expected line content
expected_line="PASS_MAX_DAYS\s*90"

# Check if the specified lines exist in /etc/login.defs
if grep -q "$expected_line" /etc/login.defs; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0227 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0227 has failed."
fi
