#!/bin/bash

success=false

if grep -q "[org/gnome/desktop/screensaver]" /etc/dconf/db/local.d/00-screensaver && grep -q "##Set this to true to lock the screen when the screensaver activates
" /etc/dconf/db/local.d/00-screensaver && grep -q "lock-enabled=true" /etc/dconf/db/local.d/00-screensaver; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0234 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0234 has failed."
fi
