#!/bin/bash

success=false

if grep -q "umask 027" /etc/bashrc && grep -q "umask 027" /etc/profile; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0241 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0241 has failed."
fi
