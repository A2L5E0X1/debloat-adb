#!/bin/bash

#
# This Script is by DarkJoker360
#

echo "### Xiaomi MIUI Debloat Script"
echo "### by DarkJoker360           "
echo " "

sleep 1

# Config
ADB="/usr/bin/adb"

# Check for ADB
if [ "$(which adb)" != "$ADB" ]; then
    echo "ERROR: ADB not found! Please install it or set correct ADB path!"; exit 255
fi

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
"$ADB" wait-for-device
echo "Device found!"
"$ADB" devices
echo "Debloat will start soon..."
sleep 3

#
## Took from MIUI 12 Q
#

# MIUI apps
"$ADB" shell pm uninstall --user 0 com.mi.globalbrowser # Mi Browser
"$ADB" shell pm uninstall --user 0 com.miui.notes # Mi Browser
"$ADB" shell pm uninstall --user 0 com.xiaomi.mipicks # GetApps
"$ADB" shell pm uninstall --user 0 com.miui.miwallpaper # Mi Wallpaper
"$ADB" shell pm uninstall --user 0 com.xiaomi.midrop # Mi Drop
"$ADB" shell pm uninstall --user 0 com.miui.compass # Compass
"$ADB" shell pm uninstall --user 0 com.miui.securitycenter # Security
"$ADB" shell pm uninstall --user 0 com.xiaomi.payment # Mi Coins
"$ADB" shell pm uninstall --user 0 com.miui.fm # FM Radio
"$ADB" shell pm uninstall --user 0 cn.wps.xiaomi.abroad.lite # Mi WPS Lite
"$ADB" shell pm uninstall --user 0 com.miui.screenrecorder # Screenrecorder
"$ADB" shell pm uninstall --user 0 com.miui.misound # Mi Sound
"$ADB" shell pm uninstall --user 0 com.xiaomi.scanner # Scanner
"$ADB" shell pm uninstall --user 0 com.miui.calculator # Calculator
"$ADB" shell pm uninstall --user 0 com.duokan.phone.remotecontroller # Mi Remote controller
"$ADB" shell pm uninstall --user 0 com.miui.android.fashiongallery # Carousel wallpapers
"$ADB" shell pm uninstall --user 0 com.miui.videoplayer # Mi Videos
"$ADB" shell pm uninstall --user 0 com.miui.player # Mi Music

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
