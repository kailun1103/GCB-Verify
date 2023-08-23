#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the comment lines exist in /etc/security/pwquality.conf
if grep -q "#\s*minlen" /etc/security/pwquality.conf; then
    success=false  # If the line with minlen = 12 is commented, set success to false
else
# Check if the specified lines exist in /etc/security/pwquality.conf
    if grep -q "minlen = 12" /etc/security/pwquality.conf; then
        success=true  # If the line with minlen = 12 is not commented, set success to true
    else
        success=false
    fi
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0210 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0210 has failed."
fi
