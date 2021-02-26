#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### EMUI Debloat Script"
echo "### by A2L5E0X1        "
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

# EMUI 5 Parts - VNS-L21C432B506
adb shell pm uninstall --user 0 com.huawei.android.chr #CHR Service
adb shell pm uninstall --user 0 com.huawei.motionservice #Motionservice
adb shell pm uninstall --user 0 com.nuance.swype.emui #EMUI Keyboard
adb shell pm uninstall --user 0 com.huawei.phoneservice #HiCare
adb shell pm uninstall --user 0 com.huawei.iconnect #iconnect
adb shell pm uninstall --user 0 com.huawei.hwid #Huawei Account Login
adb shell pm uninstall --user 0 com.huawei.android.instantshare #Huawei Share
adb shell pm uninstall --user 0 com.huawei.indexsearch.observer #indexsearch
adb shell pm uninstall --user 0 com.huawei.indexsearch #indexsearch
adb shell pm uninstall --user 0 com.huawei.vassistant #Voice Assistant
adb shell pm uninstall --user 0 com.huawei.watch.sync #WatchSync
adb shell pm uninstall --user 0 com.huawei.hwstartupguide #Startup Guide
adb shell pm uninstall --user 0 com.huawei.powergenie #PowerGenie
adb shell pm uninstall --user 0 com.huawei.scanner #Scanner
adb shell pm uninstall com.huawei.compass #Compass
adb shell pm uninstall --user 0 com.huawei.compass
adb shell pm uninstall com.android.hwmirror #Mirror
adb shell pm uninstall --user 0 com.android.hwmirror
adb shell pm uninstall com.huawei.gamebox.global #HiGame
adb shell pm uninstall --user 0 com.huawei.gamebox.global
adb shell pm uninstall com.huawei.appmarket #AppGallery
adb shell pm uninstall --user 0 com.huawei.appmarket
adb shell pm uninstall com.huawei.health #Health
adb shell pm uninstall --user 0 com.huawei.health
adb shell pm uninstall com.huawei.KoBackup #Backup
adb shell pm uninstall --user 0 com.huawei.KoBackup

# EMUI 8 Parts - WAS-LX1C432
adb shell pm uninstall --user 0 com.huawei.hifolder #unknown
adb shell pm uninstall --user 0 com.huawei.android.tips #Tips
adb shell pm uninstall --user 0 com.huawei.synergy #unknown
adb shell pm uninstall --user 0 com.huawei.hiview #unknown
adb shell pm uninstall --user 0 com.touchtype.swiftkey #SwiftKey
adb shell pm uninstall --user 0 com.huawei.nearby #Nearby
adb shell pm uninstall --user 0 com.huawei.android.FloatTasks #unknown
adb shell pm uninstall --user 0 com.huawei.recsys #unknown
adb shell pm uninstall --user 0 com.huawei.gameassistant #Gameassistant
adb shell pm uninstall --user 0 com.huawei.hiviewtunnel #unknown
adb shell pm uninstall --user 0 com.huawei.tips #More Tips
adb shell pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator #SwiftKeyboard Part
adb shell pm uninstall --user 0 com.qeexo.smartshot #unknown
adb shell pm uninstall --user 0 com.huawei.android.instantonline #unknown

# EMUI 10 Parts - HRY-LX1C432
adb shell pm uninstall --user 0 com.huawei.wallet #Wallet
adb shell pm uninstall --user 0 com.huawei.hivideo.overseas #HiVideo

# Gameloft Games
adb shell pm uninstall com.gameloft.android.GloftAGMP
adb shell pm uninstall com.gameloft.android.GloftDBMF
adb shell pm uninstall com.gameloft.android.GloftPDMF
adb shell pm uninstall com.gameloft.android.GloftPZOR
adb shell pm uninstall com.gameloft.android.GloftSCCA
adb shell pm uninstall com.gameloft.android.GloftSCRT
adb shell pm uninstall com.gameloft.android.GloftSMIF
adb shell pm uninstall --user 0 com.gameloft.android.GloftAGMP
adb shell pm uninstall --user 0 com.gameloft.android.GloftDBMF
adb shell pm uninstall --user 0 com.gameloft.android.GloftPDMF
adb shell pm uninstall --user 0 com.gameloft.android.GloftPZOR
adb shell pm uninstall --user 0 com.gameloft.android.GloftSCCA
adb shell pm uninstall --user 0 com.gameloft.android.GloftSCRT
adb shell pm uninstall --user 0 com.gameloft.android.GloftSMIF

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
