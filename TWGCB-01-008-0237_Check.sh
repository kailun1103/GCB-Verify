#!/bin/bash

success=false

if grep -q "readonly TMOUT=900 ; export TMOUT" /etc/bashrc && grep -q "readonly TMOUT=900 ; export TMOUT" /etc/profile; then
    success=true
else
    success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0237 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0237 has failed."
fi
