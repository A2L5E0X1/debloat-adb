#!/bin/bash
echo "#######################"
echo "Facebook Debloat Script"
echo "by GG2501YT            "
echo "#######################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer"
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## Facebook Parts
# They are not needed even if you use Facebook
adb shell pm uninstall --user 0 com.facebook.oxygen.installer #Facebook Installer
adb shell pm uninstall --user 0 com.facebook.oxygen.services #Facebook Services
adb shell pm uninstall --user 0 com.facebook.oxygen.appmanager #Facebook Appmanager
adb shell pm uninstall --user 0 com.facebook.oxygen.system #Facebook System
adb shell pm uninstall --user 0 com.facebook.system #Facebook System
adb shell pm uninstall --user 0 com.facebook.appmanager #Facebook Appmanager
adb shell pm uninstall --user 0 com.facebook.services #Facebook Services
adb shell pm uninstall --user 0 com.facebook.installer #Facebook Installer

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
