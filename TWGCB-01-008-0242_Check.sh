#!/bin/bash
success=false

expected_line="UMASK\s*027"

# Check if the specified lines exist in /etc/login.defs
if grep -q "$expected_line" /etc/login.defs; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0242 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0242 has failed."
fi
