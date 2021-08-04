#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### EMUI Debloat Script"
echo "### by A2L5E0X1        "
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

# EMUI 5 Parts - VNS-L21C432B506
"$ADB" shell pm uninstall --user 0 com.huawei.android.chr #CHR Service
"$ADB" shell pm uninstall --user 0 com.huawei.phoneservice #HiCare
"$ADB" shell pm uninstall --user 0 com.huawei.iconnect #iconnect
"$ADB" shell pm uninstall --user 0 com.huawei.hwid #Huawei Account Login
"$ADB" shell pm uninstall --user 0 com.huawei.android.instantshare #Huawei Share
"$ADB" shell pm uninstall --user 0 com.huawei.indexsearch.observer #indexsearch
"$ADB" shell pm uninstall --user 0 com.huawei.indexsearch #indexsearch
"$ADB" shell pm uninstall --user 0 com.huawei.vassistant #HiVoice
"$ADB" shell pm uninstall --user 0 com.huawei.watch.sync #WatchSync
"$ADB" shell pm uninstall --user 0 com.huawei.hwstartupguide #Startup Guide
"$ADB" shell pm uninstall --user 0 com.huawei.hwaps #HwAps
"$ADB" shell pm uninstall --user 0 com.huawei.powergenie #Power Genius
"$ADB" shell pm uninstall --user 0 com.huawei.scanner #Scanner
"$ADB" shell pm uninstall --user 0 com.huawei.iaware #iAware
"$ADB" shell pm uninstall --user 0 com.huawei.mmitest #MMITest
"$ADB" shell pm uninstall --user 0 com.huawei.autoinstallapkfrommcc #Informations
"$ADB" shell pm uninstall --user 0 com.android.partnerbrowsercustomizations.tmobile #T-Mobile Browser Customizations
"$ADB" shell pm uninstall --user 0 com.huawei.trustagent #Smart unlock
"$ADB" shell pm uninstall --user 0 com.huawei.wifiprobqeservice #HwWifiproBqeService
"$ADB" shell pm uninstall com.huawei.compass #Compass
"$ADB" shell pm uninstall --user 0 com.huawei.compass
"$ADB" shell pm uninstall com.android.hwmirror #Mirror
"$ADB" shell pm uninstall --user 0 com.android.hwmirror
"$ADB" shell pm uninstall com.huawei.gamebox.global #HiGame
"$ADB" shell pm uninstall --user 0 com.huawei.gamebox.global
"$ADB" shell pm uninstall com.huawei.appmarket #AppGallery
"$ADB" shell pm uninstall --user 0 com.huawei.appmarket
"$ADB" shell pm uninstall com.huawei.health #Health
"$ADB" shell pm uninstall --user 0 com.huawei.health
"$ADB" shell pm uninstall com.huawei.KoBackup #Backup
"$ADB" shell pm uninstall --user 0 com.huawei.KoBackup

# EMUI 8 Parts - WAS-LX1 8.0.0.397(C432)
"$ADB" shell pm uninstall --user 0 com.huawei.hifolder #AppAdvisor
"$ADB" shell pm uninstall --user 0 com.huawei.android.tips #Tips
"$ADB" shell pm uninstall --user 0 com.huawei.synergy #HwSynergy
"$ADB" shell pm uninstall --user 0 com.huawei.hiview #HiView
"$ADB" shell pm uninstall --user 0 com.huawei.nearby #Nearby
"$ADB" shell pm uninstall --user 0 com.huawei.intelligent #HUAWEI Assistant
"$ADB" shell pm uninstall --user 0 com.huawei.recsys #HwIntelligentRecSystem
"$ADB" shell pm uninstall --user 0 com.huawei.gameassistant #Gameassistant
"$ADB" shell pm uninstall --user 0 com.huawei.hiviewtunnel #HiViewTunnel
"$ADB" shell pm uninstall --user 0 com.huawei.tips #Tips
"$ADB" shell pm uninstall --user 0 com.huawei.android.totemweather #Weather Data Service
"$ADB" shell pm uninstall --user 0 com.huawei.android.totemweatherapp #Weather
"$ADB" shell pm uninstall --user 0 com.huawei.android.totemweatherwidget #Weather Widget
"$ADB" shell pm uninstall --user 0 com.huawei.trustcircle #Device authentication service
"$ADB" shell pm uninstall --user 0 com.qeexo.smartshot #Smart screenshots
"$ADB" shell pm uninstall --user 0 com.huawei.android.instantonline #HwInstantOnline
"$ADB" shell pm uninstall --user 0 com.huawei.hicloud #Cloud
"$ADB" shell pm uninstall --user 0 com.huawei.android.pushagent #Push Service
"$ADB" shell pm uninstall --user 0 com.huawei.android.hwupgradeguide #HwUpgradeGuide
"$ADB" shell pm uninstall --user 0 com.huawei.hwdetectrepair #Smart diagnosis
"$ADB" shell pm uninstall --user 0 com.huawei.bd #HwUE
"$ADB" shell pm uninstall --user 0 com.hicloud.android.clone #Phone Clone

# EMUI 10 Parts - HRY-LX1C432
"$ADB" shell pm uninstall --user 0 com.huawei.wallet #Wallet

# Gameloft Games
"$ADB" shell pm uninstall com.gameloft.android.GloftAGMP
"$ADB" shell pm uninstall com.gameloft.android.GloftDBMF
"$ADB" shell pm uninstall com.gameloft.android.GloftPDMF
"$ADB" shell pm uninstall com.gameloft.android.GloftPZOR
"$ADB" shell pm uninstall com.gameloft.android.GloftSCCA
"$ADB" shell pm uninstall com.gameloft.android.GloftSCRT
"$ADB" shell pm uninstall com.gameloft.android.GloftSMIF
"$ADB" shell pm uninstall com.gameloft.android.GloftANIF
"$ADB" shell pm uninstall com.gameloft.android.GloftDMKF
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftAGMP
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftDBMF
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftPDMF
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftPZOR
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftSCCA
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftSCRT
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftSMIF
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftANIF
"$ADB" shell pm uninstall --user 0 com.gameloft.android.GloftDMKF

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
