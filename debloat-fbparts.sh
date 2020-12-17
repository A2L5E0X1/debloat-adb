#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Facebook Debloat Script"
echo "### by A2L5E0X1            "
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
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
