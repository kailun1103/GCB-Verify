#!/bin/bash

file_path="/etc/chrony.conf"
server_threshold=2
pool_threshold=5

if [ -f "$file_path" ]; then
    server_count=$(grep -oE "server" "$file_path" | wc -l)
    pool_count=$(grep -oE "pool" "$file_path" | wc -l)

    if [ "$server_count" -gt "$server_threshold" ] || [ "$pool_count" -gt "$pool_threshold" ]; then
        echo ""chrony.conf" of TWGCB-01-008-0093 has been configured for NTP."
    else
        echo ""chrony.conf" of TWGCB-01-008-0093 has not been configured for NTP."
    fi
else
    echo "The file does not exist."
fi
