#!/bin/bash

success=false

if grep -q "[org/gnome/desktop/session]" /etc/dconf/db/local.d/00-screensaver && grep -q "##Set the lock time out to 900 seconds before the session is considered idle" /etc/dconf/db/local.d/00-screensaver && grep -q "idle-delay=uint32 900" /etc/dconf/db/local.d/00-screensaver; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0235 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0235 has failed."
fi
