#!/bin/bash

# 要檢查的套件名稱
package_name="xinetd"

# 檢查套件是否已經安裝
if yum list installed "$package_name" >/dev/null 2>&1; then
    echo "The $package_name package of TWGCB-01-008-0092 has not been removed."
else
    echo "The $package_name package of TWGCB-01-008-0092 has been removed."
fi

