#!/bin/bash
# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/login.defs
if grep -q "PASS_MIN_DAYS\s*1" /etc/login.defs; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0225 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0225 has failed."
fi
