#!/bin/bash
echo "####################"
echo "App Installer Script"
echo "by GG2501YT         "
echo "####################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone your Computer or use ADB over Network"
adb wait-for-device
echo "Device found!"
adb devices
echo "Installations will start soon..."
sleep 3

## FOSS Apps
adb install ./apps/AuroraStore.apk #Play Store
adb install ./apps/FDroid.apk #FDroid

adb install ./apps/Files.apk #File Manager
adb install ./apps/K9Mail.apk #Mail-App
adb install ./apps/LatinIME_openboard.apk #AOSP-Keyboard Fork
adb install ./apps/NewPipe.apk #Opensource Youtube Client
adb install ./apps/QKSMS.apk #SMS App
adb install ./apps/RetroMusic.apk #Music App
adb install ./apps/Lightning.apk #Minimal Webbrowser

## Lawnchair
if [ "$(adb shell getprop ro.system.build.version.sdk)" > "29" ]; then
    adb install ./apps/Lawnchair_Q.apk
else
    adb install ./apps/Lawnchair_P_and_older.apk
fi

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
