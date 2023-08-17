#!/bin/bash

# 檢查 avahi-daemon 服務是否已經啟用
if sudo systemctl is-active --quiet avahi-daemon; then
    echo "avahi-daemon has been enabled for TWGCB-01-008-0095."
else
    echo "avahi-daemon has not been enabled or not exist for TWGCB-01-008-0095."
fi
