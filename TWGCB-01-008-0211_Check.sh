#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the comment lines exist in /etc/security/pwquality.conf
if grep -q "#\s*minclass" /etc/security/pwquality.conf; then
    success=false
else
# Check if the specified lines exist in /etc/security/pwquality.conf
    if grep -q "minclass = 4" /etc/security/pwquality.conf; then
        success=true
    else
        success=false
    fi
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0211 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0211 has failed."
fi
