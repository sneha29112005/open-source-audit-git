#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
 echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 git) echo "Git: Distributed version control powering open source" ;;
 apache2) echo "Apache: backbone of the web" ;;
 mysql) echo "MySQL: database for millions of apps" ;;
 firefox) echo "Firefox: open web browser" ;;
esac
