#!/bin/bash

# Set initial boolean value to false
success=false

# Check if the specified lines exist in /etc/modprobe.d/dccp.conf
if grep -q "install sctp /bin/true" /etc/modprobe.d/sctp.conf && grep -q "blacklist sctp" /etc/modprobe.d/sctp.conf; then
    success=true
else
    success=false
fi

if $success; then
    echo "Network configuration for TWGCB-01-008-0127 has been completed."
else
    echo "Network configuration for TWGCB-01-008-0127 has failed."
fi
