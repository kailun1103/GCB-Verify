#!/bin/bash

success=false

package_name="kbd.x86_64"

if dnf list installed "$package_name" >/dev/null 2>&1; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0233 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0233 has failed."
fi
