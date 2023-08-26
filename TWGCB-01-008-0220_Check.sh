#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/authselect/password-auth & /etc/authselect/system-auth
if grep -q "auth        required                                     pam_faillock.so deny=5" /etc/authselect/password-auth && grep -q "auth        required                                     pam_faillock.so deny=5" /etc/authselect/system-auth; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0220 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0220 has failed."
fi
