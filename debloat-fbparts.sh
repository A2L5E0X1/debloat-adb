#!/bin/bash
echo "#######################"
echo "Facebook Debloat Script"
echo "by GG2501YT            "
echo "#######################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## Facebook Parts
# They are not needed even if you use Facebook
FBBLOAT=(
    "com.facebook.oxygen.installer"  #Facebook Installer
    "com.facebook.oxygen.services"   #Facebook Services
    "com.facebook.oxygen.appmanager" #Facebook Appmanager
    "com.facebook.oxygen.system"     #Facebook System
    "com.facebook.system"            #Facebook System
    "com.facebook.appmanager"        #Facebook Appmanager
    "com.facebook.services"          #Facebook Services
    "com.facebook.installer"         #Facebook Installer
)

for APP in "${FBBLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
