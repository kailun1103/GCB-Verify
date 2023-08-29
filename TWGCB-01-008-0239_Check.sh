#!/bin/bash
# Set initial boolean value to false
success=false

expected_line="/org/gnome/desktop/session/idle-delay
/org/gnome/desktop/screensaver/lock-enabled
/org/gnome/desktop/screensaver/lock-delay
/org/gnome/desktop/lockdown/disable-lock-screen"

if grep -q "$expected_line" /etc/dconf/db/local.d/locks/session; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0239 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0239 has failed."
fi
