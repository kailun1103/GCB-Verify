#!/bin/bash

wifi_status=$(nmcli radio wifi)
wwan_status=$(nmcli radio wwan)

if [ "$wifi_status" == "enabled" ] || [ "$wwan_status" == "enabled" ]; then
    echo "Network configuration for TWGCB-01-008-0130 has failed."
else
    echo "Network configuration for TWGCB-01-008-0130 has been completed."
fi
