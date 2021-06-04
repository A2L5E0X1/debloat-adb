#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### ZTE AOSP Debloat Script       "
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

# ZTE AOSP (Blade A7 2019 Android 9)
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
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
