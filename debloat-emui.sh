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

BLOAT=(
    #"com.huawei.android.launcher" # DO NOT UNINSTALL ON EMUI 9 AND NEWER, OR QUICKSTEP WILL BE DEAD
    ## EMUI 5 Parts, P9 Lite
    "com.huawei.android.thememanager"   #Designs
    "com.huawei.android.chr"            #CHR Service
    "com.huawei.motionservice"          #Motionshit
    "com.nuance.swype.emui"             #EMUI Keyboard
    "com.huawei.phoneservice"           #HiCare
    "com.huawei.iconnect"               #iconnect (apple?)
    "com.huawei.hwid"                   #Huawei Account Login
    "com.huawei.android.instantshare"   #Huawei Share
    "com.huawei.indexsearch.observer"   #indexsearch
    "com.huawei.indexsearch"            #indexsearch
    "com.huawei.vassistant"             #Voice Assistant
    "com.huawei.watch.sync"             #WatchSync
    "com.huawei.hwstartupguide"         #Startup Guide
    "com.huawei.powergenie"             #PowerGenie (Kills Apps), see https://dontkillmyapp.com/huawei
    "com.huawei.scanner"                #Scanner
    "com.huawei.gamebox.global"
    "com.huawei.appmarket"
    "com.huawei.health"
    "com.android.mediacenter"           #Music-Player
    "com.huawei.hidisk"                 #Files
    "com.huawei.KoBackup"               #Backup
    "com.android.email"                 #E-Mail App
    ## EMUI 8 Parts, P10 Lite
    "com.huawei.hifolder"               #unknown
    "com.huawei.android.tips"           #Tips
    "com.huawei.synergy"                #unknown
    "com.huawei.hiview"                 #unknown
    "com.touchtype.swiftkey"            #SwiftKey
    "com.huawei.nearby"                 #Nearby
    "com.huawei.android.FloatTasks"     #unknown
    "com.huawei.recsys"                 #unknown
    "com.huawei.gameassistant"          #Gameassistant
    "com.huawei.hiviewtunnel"           #unknown
    "com.huawei.tips"                   #More Tips
    "com.swiftkey.swiftkeyconfigurator" #SwiftKeyboard Part
    "com.qeexo.smartshot"               #unknown
    "com.huawei.android.instantonline"  #unknown
    ## EMUI 10 Parts, Honor 10 Lite, thanks to mixboxmixing
    "com.huawei.wallet"
    "com.huawei.hivideo.overseas"
    ## Gameloft Games
    "com.gameloft.android.GloftAGMP"
    "com.gameloft.android.GloftDBMF"
    "com.gameloft.android.GloftPDMF"
    "com.gameloft.android.GloftPZOR"
    "com.gameloft.android.GloftSCCA"
    "com.gameloft.android.GloftSCRT"
    "com.gameloft.android.GloftSMIF"
)

for APP in "${BLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

USER_BLOAT=(
    "com.huawei.health"                 #Health
    "com.huawei.appmarket"              #AppGallery
    "com.huawei.KoBackup"               #Backup
    "com.gameloft.android.GloftAGMP"
    "com.gameloft.android.GloftDBMF"
    "com.gameloft.android.GloftPDMF"
    "com.gameloft.android.GloftPZOR"
    "com.gameloft.android.GloftSCCA"
    "com.gameloft.android.GloftSCRT"
    "com.gameloft.android.GloftSMIF"
    "com.android.hwmirror"              #Mirror
    "com.huawei.compass"                #Compass
    "com.huawei.gamebox.global"         #HiGame
)

for USER_APP in "${USER_BLOAT[@]}"
do
    adb shell pm uninstall "$USER_APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
