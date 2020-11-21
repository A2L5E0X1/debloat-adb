#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Intro
echo "##############################"
echo "ZTE AOSP Debloat Script       "
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

# ZTE AOSP
adb shell pm uninstall --user 0 com.zte.privacyzone #Privacy Zone
adb shell pm uninstall --user 0 com.zte.zgesture #ZTE Gestures
adb shell pm uninstall --user 0 com.zte.faceverify #Face Verify
adb shell pm uninstall --user 0 com.zte.zdmdaemon #ZDM Daemon
adb shell pm uninstall --user 0 com.zte.zdmdaemon.install #ZDM Installer
adb shell pm uninstall --user 0 com.zte.handservice #ZTE Cares
adb shell pm uninstall --user 0 com.zte.heartyservice.strategy #Speedup Service
adb shell pm uninstall --user 0 com.zte.zdm #FOTA
adb shell pm uninstall --user 0 com.zte.privacypolicy #Privacy

# Disconnect ADB
adb kill-server

# Success
echo "Success"
