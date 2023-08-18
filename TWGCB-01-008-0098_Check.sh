#!/bin/bash

# 檢查 smb 服務是否已經啟用
if sudo systemctl is-active --quiet smb; then
    echo "smb has been enabled for TWGCB-01-008-0098."
else
    echo "smb has not been enabled or not exist for TWGCB-01-008-0098."
fi

