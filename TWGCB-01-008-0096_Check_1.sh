#!/bin/bash

# 檢查 SNMP 服務是否已經啟用
if sudo systemctl is-active --quiet SNMP; then
    echo "SNMP has been enabled for TWGCB-01-008-0096."
else
    echo "SNMP has not been enabled or not exist for TWGCB-01-008-0096."
fi

