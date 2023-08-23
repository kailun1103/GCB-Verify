#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/modprobe.d/rds.conf
if grep -q "install rds /bin/true" /etc/modprobe.d/rds.conf && grep -q "blacklist rds" /etc/modprobe.d/rds.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Network configuration for TWGCB-01-008-0128 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0128 has failed."
fi
