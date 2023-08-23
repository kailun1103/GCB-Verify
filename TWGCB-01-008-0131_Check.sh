#!/bin/bash

interface="ens160"

# Get the status of the interface
status=$(ip link show $interface | grep -o "PROMISC")

if [ -n "$status" ]; then
    echo "Network configuration for TWGCB-01-008-0131 has failed."
else
    echo "Network configuration for TWGCB-01-008-0131 has been completed."
fi
