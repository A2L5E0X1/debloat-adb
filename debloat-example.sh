#!/bin/bash

#
# This Script is by YOUR_GITHUB_USERNAME
#

# Intro
echo "##############################"
echo "Example Debloat Script        "
echo "Thanks to YOUR_GITHUB_USERNAME"
echo "by A2L5E0X1                   "
echo "##############################"
sleep 1

# Check if ADB is installed
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ADB not found! Please install it!" && exit 255
fi

# Waiting for Device
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
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
echo "Success"
