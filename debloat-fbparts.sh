#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Intro
echo "#######################"
echo "Facebook Debloat Script"
echo "by A2L5E0X1            "
echo "#######################"
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

# Facebook Parts, they are not needed, even if you are using Facebook
adb shell pm uninstall --user 0 com.facebook.oxygen.installer #Facebook Installer
adb shell pm uninstall --user 0 com.facebook.oxygen.services #Facebook Services
adb shell pm uninstall --user 0 com.facebook.oxygen.appmanager #Facebook Appmanager
adb shell pm uninstall --user 0 com.facebook.oxygen.system #Facebook System
adb shell pm uninstall --user 0 com.facebook.system #Facebook System
adb shell pm uninstall --user 0 com.facebook.appmanager #Facebook Appmanager
adb shell pm uninstall --user 0 com.facebook.services #Facebook Services
adb shell pm uninstall --user 0 com.facebook.installer #Facebook Installer

# Disconnect ADB
adb kill-server

# Success
echo "Success"
