#!/bin/bash

# Set initial boolean value to false
success=false

# Check if net.ipv6.conf.all.forwarding is set to 0
ipv6_forwarding_value=$(sysctl -n net.ipv6.conf.all.forwarding)
if [ "$ipv6_forwarding_value" -eq 0 ]; then
    success=true
else
    echo "Fail: net.ipv6.conf.all.forwarding is not set to 0."
    success=false
fi

if $success; then
    echo "Configuration of IPv6 for TWGCB-01-008-0108 has been completed."
else
    echo "Configuration of IPv6 for TWGCB-01-008-0108 has failed."
fi
