#!/bin/bash

# 設定 chrony 配置文件的路徑
file_path="/etc/chrony.conf"
# 定義檢查閾值（原有文件裡server以及pool的數量）
server_threshold=2
pool_threshold=5

# 檢查配置文件是否存在
if [ -f "$file_path" ]; then
    # 計算配置文件中 'server' 關鍵字的出現次數
    server_count=$(grep -oE "server" "$file_path" | wc -l)
    # 計算配置文件中 'pool' 關鍵字的出現次數
    pool_count=$(grep -oE "pool" "$file_path" | wc -l)

    # 檢查server以及pool的數量是否超過閾值
    if [ "$server_count" -gt "$server_threshold" ] || [ "$pool_count" -gt "$pool_threshold" ]; then
        echo "chrony.conf" of TWGCB-01-008-0093 has been configured for NTP."
    else
        echo "chrony.conf" of TWGCB-01-008-0093 has not been configured for NTP."
    fi
else
    echo "The file does not exist."
fi
