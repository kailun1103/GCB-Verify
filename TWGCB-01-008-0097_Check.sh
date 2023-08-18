#!/bin/bash

# 檢查 squid 服務是否已經啟用
if sudo systemctl is-active --quiet squid; then
    echo "squid has been enabled for TWGCB-01-008-0097."
else
    echo "squid has not been enabled or not exist for TWGCB-01-008-0097."
fi
