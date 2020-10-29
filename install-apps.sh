#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Intro
echo "###################"
echo "Appinstaller Script"
echo "by A2L5E0X1        "
echo "###################"
sleep 1

# Check if ADB is installed
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ADB not found! Please install it!" && exit 255
fi

# Check if Git is installed
if [ "$(which git)" != "/usr/bin/git" ]; then
    echo "Git not found! Please install it!" && exit 255
fi

# Fetching APKs
if [ -d ./apps ]; then
    rm -rf ./apps
fi
git clone https://github.com/A2L5E0X1/apps

# Waiting for Device
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Installation will start soon..."
sleep 3

# Start Installation
./apps/install.sh

# Disconnect ADB
adb kill-server

# Success
echo "Success"
