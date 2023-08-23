#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/modprobe.d/tipc.conf
if grep -q "install tipc /bin/true" /etc/modprobe.d/tipc.conf && grep -q "blacklist tipc" /etc/modprobe.d/tipc.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Network configuration for TWGCB-01-008-0129 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0129 has failed."
fi
