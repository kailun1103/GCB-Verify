#!/bin/bash
# Set initial boolean value to false
success=false

expected_line="AutomaticLoginEnable=false"

if grep -q "$expected_line" /etc/gdm/custom.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0236 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0236 has failed."
fi
