#!/bin/bash

# 檢查 rsync 服務是否已經啟用
if sudo systemctl is-active --quiet rsync; then
    echo "rsync has been enabled for TWGCB-01-008-0094."
else
    echo "rsync has not been enabled or not exist for TWGCB-01-008-0094."
fi
