#!/bin/bash
PACKAGE="git"
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version | License | Summary'
else
    echo "$PACKAGE is NOT installed."
fi
case $PACKAGE in
    httpd) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    git) echo "Git: The tool Linus built when proprietary failed him" ;;
    vlc) echo "VLC: Plays anything - built by students in Paris" ;;
esac