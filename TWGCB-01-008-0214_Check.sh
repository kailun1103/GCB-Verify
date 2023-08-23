#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the comment lines exist in /etc/security/pwquality.conf
if grep -q "#\s*lcredit" /etc/security/pwquality.conf; then
    success=false
else
# Check if the specified lines exist in /etc/security/pwquality.conf
    if grep -q "lcredit = -1" /etc/security/pwquality.conf; then
        success=true
    else
        success=false
    fi
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0214 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0214 has failed."
fi
