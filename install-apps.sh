#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Appinstaller Script"
echo "### by A2L5E0X1        "
sleep 1

# Config
ADB="/usr/bin/adb"
GIT="/usr/bin/git"

# Check for ADB
if [ "$(which adb)" != "$ADB" ]; then
    echo "ERROR: ADB not found! Please install it or set correct ADB path!"; exit 255
fi

# Check for GIT
if [ "$(which git)" != "$GIT" ]; then
    echo "ERROR: GIT not found! Please install it or set correct GIT path!"; exit 255
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
"$GIT" clone https://github.com/A2L5E0X1/apps

# Waiting for Device
"$ADB" wait-for-device
echo "Device found!"
"$ADB" devices
echo "Installation will start soon..."
sleep 3

# Install Apps
for APKS in $(find ./apps/apk -name *.apk); do "$ADB" install "$APKS"; done

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
