#!/bin/bash

success=false

# excute first command
awk -F: '($1!="root" && $1!="sync" && $1!="shutdown" && $1!="halt" && $1!~/^\+/ && $3<'"$(awk '/^\s*UID_MIN/{print $2}' /etc/login.defs)"' && $7!="'"$(which nologin)"'" && $7!="/bin/false") {print $1}' /etc/passwd | while read user; do usermod -s $(which nologin) $user; done

if [ $? -eq 0 ]; then
  # excute second command
  awk -F: '($1!="root" && $1!~/^\+/ && $3<'"$(awk '/^\s*UID_MIN/{print $2}' /etc/login.defs)"') {print $1}' /etc/passwd | xargs -I '{}' passwd -S '{}' | awk '($2!="L" && $2!="LK") {print $1}' | while read user; do usermod -L $user; done

  # if all command all set
  if [ $? -eq 0 ]; then
    success=true
  else
    success=false
  fi
else
  success=false
fi

if $success; then
    echo "Account and Access Control for TWGCB-01-008-0237 has been completed."
else
    echo "Account and Access Control for TWGCB-01-008-0237 has failed."
fi
