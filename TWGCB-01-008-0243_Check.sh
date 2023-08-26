#!/bin/bash

success=false

if grep -q "^auth[[:space:]]\+required[[:space:]]\+pam_wheel.so[[:space:]]\+use_uid" /etc/pam.d/su && grep -q "wheel:x:10:root," /etc/group; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0243 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0243 has failed."
fi
