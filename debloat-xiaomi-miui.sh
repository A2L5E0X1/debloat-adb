#!/bin/bash

#
# This Script is by DarkJoker360
#

echo "### Xiaomi MIUI Debloat Script"
echo "### by DarkJoker360           "
echo " "

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

#
## Took from MIUI 12 Q
#

# MIUI apps
adb shell pm uninstall --user 0 com.mi.globalbrowser # Mi Browser
adb shell pm uninstall --user 0 com.miui.notes # Mi Browser
adb shell pm uninstall --user 0 com.xiaomi.mipicks # GetApps
adb shell pm uninstall --user 0 com.miui.miwallpaper # Mi Wallpaper
adb shell pm uninstall --user 0 com.xiaomi.midrop # Mi Drop
adb shell pm uninstall --user 0 com.miui.compass # Compass
adb shell pm uninstall --user 0 com.miui.securitycenter # Security
adb shell pm uninstall --user 0 com.xiaomi.payment # Mi Coins
adb shell pm uninstall --user 0 com.miui.fm # FM Radio
adb shell pm uninstall --user 0 cn.wps.xiaomi.abroad.lite # Mi WPS Lite
adb shell pm uninstall --user 0 com.miui.screenrecorder # Screenrecorder
adb shell pm uninstall --user 0 com.miui.misound # Mi Sound
adb shell pm uninstall --user 0 com.xiaomi.scanner # Scanner
adb shell pm uninstall --user 0 com.miui.calculator # Calculator
adb shell pm uninstall --user 0 com.duokan.phone.remotecontroller # Mi Remote controller
adb shell pm uninstall --user 0 com.miui.android.fashiongallery # Carousel wallpapers
adb shell pm uninstall --user 0 com.miui.videoplayer # Mi Videos
adb shell pm uninstall --user 0 com.miui.player # Mi Music

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
