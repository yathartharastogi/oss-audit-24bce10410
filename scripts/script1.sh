#!/bin/bash
STUDENT_NAME="Yathartha Rastogi"
SOFTWARE_CHOICE="Git"
KERNEL=$(uname -r)
USER_NAME=$(whoami)

if command -v uptime >/dev/null 2>&1; then
    UPTIME=$(uptime -p)
else
    UPTIME="Not available"
fi

if [ -f /etc/os-release ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Windows (Git Bash)"
fi

DATE=$(date "+%d-%m-%Y %H:%M:%S")

echo "==============================="
echo " Open Source Audit Report"
echo "==============================="
echo "Name       : $STUDENT_NAME"
echo "Software   : $SOFTWARE_CHOICE"
echo "Kernel     : $KERNEL"
echo "User       : $USER_NAME"
echo "Uptime     : $UPTIME"
echo "OS         : $DISTRO"
echo "Date       : $DATE"
echo "License    : Linux follows GPL"
echo "==============================="