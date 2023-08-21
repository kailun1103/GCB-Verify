#!/bin/bash

# Set initial boolean value to false
success=false

# Check if net.ipv4.ip_forward is set to 0
ipv4_forward_value=$(sysctl -n net.ipv4.ip_forward)
if [ "$ipv4_forward_value" -eq 0 ]; then
    success=true
else
    echo "Fail: net.ipv4.ip_forward is not set to 0."
    success=false
fi

# Check if conditions is true
if $success; then
    echo "Configuration of IPv4 for TWGCB-01-008-0108 has been completed."
else
    echo "Configuration of IPv4 for TWGCB-01-008-0108 has failed."
fi
