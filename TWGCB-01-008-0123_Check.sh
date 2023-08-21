#!/bin/bash

# Set initial boolean value to false
success=false

# Check if net.ipv4.tcp_syncookies is set to 1
ipv4_value=$(sysctl -n net.ipv4.tcp_syncookies)
if [ "$ipv4_value" -eq 1 ]; then
    success=true
else
    success=false
fi

# Check if both conditions are true
if $success; then
    echo "Network configuration for TWGCB-01-008-0123 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0123 has failed."
fi
