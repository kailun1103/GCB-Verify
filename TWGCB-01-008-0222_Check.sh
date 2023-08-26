#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/authselect/password-auth & /etc/authselect/system-auth
if grep -q "password    sufficient                                   pam_unix.so sha512 shadow nullok use_authtok remember=3" /etc/authselect/password-auth && grep -q "password    sufficient                                   pam_unix.so sha512 shadow nullok use_authtok remember=3" /etc/authselect/system-auth; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0222 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0222 has failed."
fi
