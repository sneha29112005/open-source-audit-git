#!/bin/bash
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
 echo "File not found"
 exit 1
fi

while read LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
  COUNT=$((COUNT+1))
 fi
done < "$LOGFILE"

echo "$KEYWORD found $COUNT times"

grep -i "$KEYWORD" "$LOGFILE" | tail -5
