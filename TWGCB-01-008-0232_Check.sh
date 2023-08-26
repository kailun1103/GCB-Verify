#!/bin/bash

# Set initial boolean value to false
success=false

if grep -q "*                hard    maxlogins       10" /etc/security/limits.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0232 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0232 has failed."
fi
