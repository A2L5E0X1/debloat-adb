#!/bin/bash

#
# REMOVE THIS AT PULL-REQUEST
#
# Please replace YOUR_GITHUB_USERNAME with your Github Username
# Please keep same layout as my other Debloat-Scripts
#

#
# This Script is by A2L5E0X1 + YOUR_GITHUB_USERNAME
#

echo "### Example Debloat Script        "
echo "### Thanks to YOUR_GITHUB_USERNAME"
echo "### by A2L5E0X1                   "
sleep 1

# Check for ADB
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ERROR: ADB not found! Please install it or set correct PATH!" && exit 255
fi

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

# Example
adb shell pm uninstall --user 0 com.package.name #Please define AppName or what the App is for here

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
