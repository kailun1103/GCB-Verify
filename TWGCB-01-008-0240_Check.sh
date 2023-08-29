#!/bin/bash

success=false

# excute usermod command
usermod -g 0 root

if [ $? -eq 0 ]; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0240 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0240 has failed."
fi
