#!/bin/bash

# 获取useradd命令的默认值
default_output=$(useradd -D)
echo "useradd -D 的输出为: $default_output"

# 从输出中提取 INACTIVE 的值
inactive_value=$(echo "$default_output" | awk -F'=' '/^INACTIVE/{print $2}')

# 检查 inactive_value 是否为 30
if [ "$inactive_value" -eq 30 ]; then
  echo "TRUE"
else
  echo "FALSE"
fi

