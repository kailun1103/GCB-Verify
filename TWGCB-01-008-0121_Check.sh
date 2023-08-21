#!/bin/bash

# Set initial boolean value to false
success=false

# Check if net.ipv4.conf.all.rp_filter is set to 1
ipv4_value=$(sysctl -n net.ipv4.conf.all.rp_filter)
if [ "$ipv4_value" -eq 1 ]; then
    success=true
else
    success=false
fi

# Check if both conditions are true
if $success; then
    echo "Network configuration for TWGCB-01-008-0121 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0121 has failed."
fi
