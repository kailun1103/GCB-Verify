#!/bin/bash

# 檢查 smb 服務是否已經啟用
if sudo systemctl is-active --quiet vsftpd; then
    echo "vsftpd has been enabled for TWGCB-01-008-0099."
else
    echo "vsftpd has not been enabled or not exist for TWGCB-01-008-0099."
fi
