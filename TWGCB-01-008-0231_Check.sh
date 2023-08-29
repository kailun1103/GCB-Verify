#!/bin/bash

success=false

if grep -qE '^\s*#*\s*%wheel\s+ALL=\(ALL\)\s+NOPASSWD:\s+ALL' /etc/sudoers; then
  success=true
else
  success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0231 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0231 has failed."
fi
