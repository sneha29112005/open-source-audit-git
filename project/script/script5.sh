#!/bin/bash

read -p "Tool: " TOOL
read -p "Freedom means: " FREEDOM
read -p "Build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "Using $TOOL, I value $FREEDOM." >> $OUTPUT
echo "I will build $BUILD and share it freely." >> $OUTPUT

cat $OUTPU
