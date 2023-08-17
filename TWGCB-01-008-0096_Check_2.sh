#!/bin/bash

config_file="/etc/snmp/snmpd.conf"
user_strings=("rouser" "rwuser")
target_strings=("com2sec notConfigUser  default       public" 
                "group   notConfigGroup v1           notConfigUser"
                "group   notConfigGroup v2c           notConfigUser"
                "view    systemview    included   .1.3.6.1.2.1.1"
                "view    systemview    included   .1.3.6.1.2.1.25.1.1"
                "access  notConfigGroup \"\"      any       noauth    exact  systemview none none")

found=0
uncommented=0
user_count=0  # 用來記錄找到的用戶數量

while IFS= read -r line; do
    for user_target in "${user_strings[@]}"; do
        if [[ $line == *"$user_target"* ]]; then
            ((user_count++))
            break
        fi
    done
done < "$config_file"

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

if [[ $found -eq 1 ]]; then
    if [[ $uncommented -eq 1 ]]; then
        echo "Configuration of SNMPv3 for TWGCB-01-008-0096_Check_2.sh has failed."
    else
        if [[ $user_count -gt 0 ]]; then
            echo "Configuration of SNMPv3 for TWGCB-01-008-0096_Check_2.sh has been completed."
        else
            echo "Configuration of SNMPv3 for TWGCB-01-008-0096_Check_2.sh has failed."
        fi
    fi
fi
