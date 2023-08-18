#!/bin/bash

# 檢查 smb 服務是否已經啟用
if sudo systemctl is-active --quiet ypserv; then
    echo "ypserv has been enabled for TWGCB-01-008-0100."
else
    echo "ypserv has not been enabled or not exist for TWGCB-01-008-0100."
fi
