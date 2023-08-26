#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/pam.d/postlogin
if grep -q "session     required                   pam_lastlog.so showfailed" /etc/pam.d/postlogin; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0223 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0223 has failed."
fi
