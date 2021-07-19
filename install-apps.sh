#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Appinstaller Script"
echo "### by A2L5E0X1        "
sleep 1

# Check for ADB
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ERROR: ADB not found! Please install it or set correct PATH!" && exit 255
fi

# Check for Git
if [ "$(which git)" != "/usr/bin/git" ]; then
    echo "ERROR: Git not found! Please install it or set correct PATH!" && exit 255
fi

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Fetching APKs
if [ -d ./apps ]; then
    rm -rf ./apps
fi
git clone https://github.com/A2L5E0X1/apps

# Waiting for Device
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
echo "Install success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
