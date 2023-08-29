#!/bin/bash

success=false

default_output=$(useradd -D)
inactive_value=$(echo "$default_output" | awk -F'=' '/^INACTIVE/{print $2}')

if [ "$inactive_value" -eq 30 ]; then
  success=true
else
  success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0228 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0228 has failed."
fi
