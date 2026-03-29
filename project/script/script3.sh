#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
  echo "$DIR => $PERMS | Size: $SIZE"
 fi
done

# Git config check
if [ -f ~/.gitconfig ]; then
 ls -l ~/.gitconfig
fi
