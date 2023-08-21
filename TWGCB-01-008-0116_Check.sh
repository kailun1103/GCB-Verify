#!/bin/bash

# Set initial boolean value to false
success_1=false
success_2=false

# Check if the specified lines exist in /etc/sysctl.conf
if grep -q "net.ipv4.conf.default.secure_redirects = 0" /etc/sysctl.conf; then
    success_1=true
else
    success_1=false
fi

# Check if net.ipv4.conf.default.secure_redirects is set to 0
ipv4_value=$(sysctl -n net.ipv4.conf.default.secure_redirects)
if [ "$ipv4_value" -eq 0 ]; then
    success_2=true
else
    success_2=false
fi

# Check if both conditions are true
if $success_1 && $success_2; then
    echo "Network configuration for TWGCB-01-008-0116 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0116 has failed."
fi
