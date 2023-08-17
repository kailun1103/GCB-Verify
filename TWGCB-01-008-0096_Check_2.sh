#!/bin/bash

# 設定 snmpd.conf 配置文件的路徑
config_file="/etc/snmp/snmpd.conf"
# 要檢查的SNMPv3用戶
user_strings=("rouser" "rwuser")
# 目標行數設定
target_strings=("com2sec notConfigUser  default       public" 
                "group   notConfigGroup v1           notConfigUser"
                "group   notConfigGroup v2c           notConfigUser"
                "view    systemview    included   .1.3.6.1.2.1.1"
                "view    systemview    included   .1.3.6.1.2.1.25.1.1"
                "access  notConfigGroup \"\"      any       noauth    exact  systemview none none")

found=0          # 用於記錄是否找到符合 target_strings 的行
uncommented=0    # 用於記錄未被註解的行數
user_count=0     # 用於記錄找到的 SNMPv3 用戶數量

# 判斷有幾個SNMPv3用戶
while IFS= read -r line; do
    for user_target in "${user_strings[@]}"; do
        if [[ $line == *"$user_target"* ]]; then
            ((user_count++))
            break
        fi
    done
done < "$config_file"

# 判斷有幾個符合的目標行
while IFS= read -r line; do
    for target in "${target_strings[@]}"; do
        if [[ $line == *"$target"* ]]; then
            found=1
            if [[ $line != \#* ]]; then
                uncommented=1
                break
            fi
        fi
    done
done < "$config_file"

# 根據找到的情況輸出訊息
if [[ $found -eq 1 ]]; then
    if [[ $uncommented -eq 1 ]]; then
        echo "Configuration of SNMPv3 for TWGCB-01-008-0096 has failed."
    else
        if [[ $user_count -gt 0 ]]; then
            echo "Configuration of SNMPv3 for TWGCB-01-008-0096 has been completed."
        else
            echo "Configuration of SNMPv3 for TWGCB-01-008-0096 has failed."
        fi
    fi
fi
