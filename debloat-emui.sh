#!/bin/bash
echo "###################"
echo "EMUI Debloat Script"
echo "by GG2501YT        "
echo "###################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## EMUI Apps

## DO NOT UNINSTALL ON EMUI 9 AND NEWER, OR QUICKSTEP WILL BE DEAD
#adb shell pm uninstall --user 0 com.huawei.android.launcher

## EMUI 5 Parts, P9 Lite
adb shell pm uninstall --user 0 com.huawei.android.thememanager #Designs
adb shell pm uninstall --user 0 com.huawei.android.chr #CHR Service
adb shell pm uninstall --user 0 com.huawei.motionservice #Motionshit
adb shell pm uninstall --user 0 com.nuance.swype.emui #EMUI Keyboard
adb shell pm uninstall --user 0 com.huawei.phoneservice #HiCare
adb shell pm uninstall --user 0 com.huawei.iconnect #iconnect (apple?)
adb shell pm uninstall --user 0 com.huawei.hwid #Huawei Account Login
adb shell pm uninstall --user 0 com.huawei.android.instantshare #Huawei Share
adb shell pm uninstall --user 0 com.huawei.indexsearch.observer #indexsearch
adb shell pm uninstall --user 0 com.huawei.indexsearch #indexsearch
adb shell pm uninstall --user 0 com.huawei.vassistant #Voice Assistant
adb shell pm uninstall --user 0 com.huawei.watch.sync #WatchSync
adb shell pm uninstall --user 0 com.huawei.hwstartupguide #Startup Guide
adb shell pm uninstall com.huawei.compass #Compass
adb shell pm uninstall --user 0 com.huawei.powergenie #PowerGenie (Kills Apps), see https://dontkillmyapp.com/huawei
adb shell pm uninstall --user 0 com.huawei.scanner #Scanner
adb shell pm uninstall com.android.hwmirror #Mirror
adb shell pm uninstall com.huawei.gamebox.global #HiGame
adb shell pm uninstall --user 0 com.huawei.gamebox.global
adb shell pm uninstall com.huawei.appmarket #AppGallery
adb shell pm uninstall --user 0 com.huawei.appmarket
adb shell pm uninstall com.huawei.health #Health
adb shell pm uninstall --user 0 com.huawei.health
adb shell pm uninstall --user 0 com.android.mediacenter #Music-Player
adb shell pm uninstall --user 0 com.huawei.hidisk #Files
adb shell pm uninstall --user 0 com.huawei.KoBackup #Backup
adb shell pm uninstall com.huawei.KoBackup #Backup
adb shell pm uninstall --user 0 com.android.email #E-Mail App

## EMUI 8 Parts, P10 Lite
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

## EMUI 10 Parts, Honor 10 Lite, thanks to mixboxmixing
adb shell pm uninstall --user 0 com.huawei.wallet
adb shell pm uninstall --user 0 com.huawei.hivideo.overseas

## Gameloft Games
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

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
