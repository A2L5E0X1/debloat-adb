#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### EMUI Debloat Script"
echo "### by A2L5E0X1        "
sleep 1

# Check for ADB
if [ "$(which adb)" != "/usr/local/bin/adb" ]; then
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
adb shell pm uninstall --user 0 com.huawei.phoneservice #HiCare
adb shell pm uninstall --user 0 com.huawei.iconnect #iconnect
adb shell pm uninstall --user 0 com.huawei.hwid #Huawei Account Login
adb shell pm uninstall --user 0 com.huawei.android.instantshare #Huawei Share
adb shell pm uninstall --user 0 com.huawei.indexsearch.observer #indexsearch
adb shell pm uninstall --user 0 com.huawei.indexsearch #indexsearch
adb shell pm uninstall --user 0 com.huawei.vassistant #HiVoice
adb shell pm uninstall --user 0 com.huawei.watch.sync #WatchSync
adb shell pm uninstall --user 0 com.huawei.hwstartupguide #Startup Guide
adb shell pm uninstall --user 0 com.huawei.hwaps #HwAps
adb shell pm uninstall --user 0 com.huawei.powergenie #Power Genius
adb shell pm uninstall --user 0 com.huawei.scanner #Scanner
adb shell pm uninstall --user 0 com.huawei.iaware #iAware
adb shell pm uninstall --user 0 com.huawei.mmitest #MMITest
adb shell pm uninstall --user 0 com.huawei.autoinstallapkfrommcc #Informations
adb shell pm uninstall --user 0 com.android.partnerbrowsercustomizations.tmobile #T-Mobile Browser Customizations
adb shell pm uninstall --user 0 com.huawei.trustagent #Smart unlock
adb shell pm uninstall --user 0 com.huawei.wifiprobqeservice #HwWifiproBqeService
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

# EMUI 8 Parts - WAS-LX1 8.0.0.397(C432)
adb shell pm uninstall --user 0 com.huawei.hifolder #AppAdvisor
adb shell pm uninstall --user 0 com.huawei.android.tips #Tips
adb shell pm uninstall --user 0 com.huawei.synergy #HwSynergy
adb shell pm uninstall --user 0 com.huawei.hiview #HiView
adb shell pm uninstall --user 0 com.huawei.nearby #Nearby
adb shell pm uninstall --user 0 com.huawei.intelligent #HUAWEI Assistant
adb shell pm uninstall --user 0 com.huawei.recsys #HwIntelligentRecSystem
adb shell pm uninstall --user 0 com.huawei.gameassistant #Gameassistant
adb shell pm uninstall --user 0 com.huawei.hiviewtunnel #HiViewTunnel
adb shell pm uninstall --user 0 com.huawei.tips #Tips
adb shell pm uninstall --user 0 com.huawei.android.totemweather #Weather Data Service
adb shell pm uninstall --user 0 com.huawei.android.totemweatherapp #Weather
adb shell pm uninstall --user 0 com.huawei.android.totemweatherwidget #Weather Widget
adb shell pm uninstall --user 0 com.huawei.trustcircle #Device authentication service
adb shell pm uninstall --user 0 com.qeexo.smartshot #Smart screenshots
adb shell pm uninstall --user 0 com.huawei.android.instantonline #HwInstantOnline
adb shell pm uninstall --user 0 com.huawei.hicloud #Cloud
adb shell pm uninstall --user 0 com.huawei.android.pushagent #Push Service
adb shell pm uninstall --user 0 com.huawei.android.hwupgradeguide #HwUpgradeGuide
adb shell pm uninstall --user 0 com.huawei.hwdetectrepair #Smart diagnosis
adb shell pm uninstall --user 0 com.huawei.bd #HwUE
adb shell pm uninstall --user 0 com.hicloud.android.clone #Phone Clone

# EMUI 10 Parts - HRY-LX1C432
adb shell pm uninstall --user 0 com.huawei.wallet #Wallet

# Gameloft Games
adb shell pm uninstall com.gameloft.android.GloftAGMP
adb shell pm uninstall com.gameloft.android.GloftDBMF
adb shell pm uninstall com.gameloft.android.GloftPDMF
adb shell pm uninstall com.gameloft.android.GloftPZOR
adb shell pm uninstall com.gameloft.android.GloftSCCA
adb shell pm uninstall com.gameloft.android.GloftSCRT
adb shell pm uninstall com.gameloft.android.GloftSMIF
adb shell pm uninstall com.gameloft.android.GloftANIF
adb shell pm uninstall com.gameloft.android.GloftDMKF
adb shell pm uninstall --user 0 com.gameloft.android.GloftAGMP
adb shell pm uninstall --user 0 com.gameloft.android.GloftDBMF
adb shell pm uninstall --user 0 com.gameloft.android.GloftPDMF
adb shell pm uninstall --user 0 com.gameloft.android.GloftPZOR
adb shell pm uninstall --user 0 com.gameloft.android.GloftSCCA
adb shell pm uninstall --user 0 com.gameloft.android.GloftSCRT
adb shell pm uninstall --user 0 com.gameloft.android.GloftSMIF
adb shell pm uninstall --user 0 com.gameloft.android.GloftANIF
adb shell pm uninstall --user 0 com.gameloft.android.GloftDMKF

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
