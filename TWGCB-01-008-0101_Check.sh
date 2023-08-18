#!/bin/bash

# 檢查 smb 服務是否已經啟用
if sudo systemctl is-active --quiet kdump.service; then
    echo "kdump.service has been enabled for TWGCB-01-008-0101."
else
    echo "kdump.service has not been enabled or not exist for TWGCB-01-008-0101."
fi
