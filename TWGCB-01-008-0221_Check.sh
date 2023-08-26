#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/authselect/password-auth & /etc/authselect/system-auth
if grep -q "auth        required                                     pam_faillock.so deny=5 unlock_time=900" /etc/authselect/password-auth && grep -q "auth        required                                     pam_faillock.so deny=5 unlock_time=900" /etc/authselect/system-auth; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0221 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0221 has failed."
fi
