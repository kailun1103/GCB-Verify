#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/modprobe.d/dccp.conf
if grep -q "install dccp /bin/true" /etc/modprobe.d/dccp.conf && grep -q "blacklist dccp" /etc/modprobe.d/dccp.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Network configuration for TWGCB-01-008-0126 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0126 has failed."
fi
