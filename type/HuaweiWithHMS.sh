#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Huawei EMUI Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

red_message "LAST WARNING: THIS SCRIPT **WILL** REMOVE HMS (Huawei Mobile Services) AND AppGallery!
IF YOU WANT TO KEEP THEM, USE THE HuaweiWithoutHMS SCRIPT INSTEAD!

Press ENTER to continue. Press CTRL+C to exit."
read

bloatware=(
    # EMUI 5 Parts - VNS-L21C432B506
    "com.huawei.phoneservice" #HiCare
    "com.huawei.iconnect" #iconnect
    "com.huawei.android.instantshare" #Huawei Share
    "com.huawei.vassistant" #HiVoice
    "com.huawei.watch.sync" #WatchSync
    "com.huawei.hwstartupguide" #Startup Guide
    "com.huawei.powergenie" #Power Genius
    "com.huawei.mmitest" #MMITest
    "com.huawei.autoinstallapkfrommcc" #Informations
    "com.android.partnerbrowsercustomizations.tmobile" #T-Mobile Browser Customizations
    "com.huawei.compass" #Compass
    "com.android.hwmirror" #Mirror
    "com.huawei.gamebox.global" #HiGame
    "com.huawei.health" #Health
    "com.huawei.KoBackup" #Backup

    # EMUI 8 Parts - WAS-LX1 8.0.0.397(C432)
    "com.huawei.hifolder" #AppAdvisor
    "com.huawei.android.tips" #Tips
    "com.huawei.hiview" #HiView
    "com.huawei.nearby" #Nearby
    "com.huawei.intelligent" #HUAWEI Assistant
    "com.huawei.gameassistant" #Gameassistant
    "com.huawei.hiviewtunnel" #HiViewTunnel
    "com.huawei.tips" #Tips
    "com.huawei.android.totemweather" #Weather Data Service
    "com.huawei.android.totemweatherapp" #Weather
    "com.huawei.android.totemweatherwidget" #Weather Widget
    "com.qeexo.smartshot" #Smart screenshots
    "com.huawei.android.instantonline" #HwInstantOnline
    "com.huawei.hicloud" #Cloud
    "com.huawei.android.pushagent" #Push Service
    "com.hicloud.android.clone" #Phone Clone

    # EMUI 10 Parts - HRY-LX1C432
    "com.huawei.wallet" #Wallet

    # EMUI 11 Parts - LYA-L29 11.0.0.200(C432E4R1P4)
    "com.huawei.easygo" #HwEasyGo
    "com.huawei.hicard" #HiCard
    "com.huawei.localBackup" #Backup
    "com.huawei.mirror" #Mirror
    "com.huawei.hidisk" #Cloud
    "com.huawei.search" #AISearch
    "com.huawei.tipsove" #Tips
    "com.huawei.fastapp" #QuickAppCentre
    "com.ebay.carrier" #EbayCarrier
    "com.huawei.arengine.service" #AREngineServer
    "com.huawei.airlink" #AirLink
    "com.huawei.videoeditor" #VideoEditor
    "com.huawei.browserhomepage" #BrowserHomepage
    "com.huawei.wallet.sdk.walletsdk" #WalletSDK
    "com.huawei.hiai" #HiAIEngine
    "com.huawei.gamebox" #GameCentre
    "com.huawei.magazine" #MagazineUnlock
    "com.huawei.remotepassword" #RemotePassword
    "com.huawei.maps.app" #PetalMaps
    "com.huawei.nb.service" #DataManagementServices
    "com.huawei.hwpanpayservice" #HwPanPayService
    "com.huawei.browser" #Browser
    "com.huawei.privatespace" #PrivateSpace
    "com.huawei.featurelayer.sharedfeature.xrkit" #XRKit
    "com.huawei.welinknow" #LinkNow
    "com.huawei.searchservice" #FusionSearchService
    "com.microsoft.translator" #Translator
    "com.huawei.hwstartupguide" #HwStartupGuide
    "com.swiftkey.swiftkeyconfigurator" #SwiftKeyFactorySettings
    "com.huawei.android.remotecontroller" #SmartRemote
    "com.huawei.hwvoipservice" #MeeTimeService
    "com.huawei.android.karaoke" #KaraokeEffect
    "com.huawei.game.kitserver" #GameKit
    "com.huawei.hwsearch" #PetalSearch
    "com.huawei.hwread.dz" #Reader
    "com.huawei.mycenter" #MemberCentre

    # EMUI 12 Parts - LYA-L29 12.0.0.132(C432E3R1P2patch01)
    "com.huawei.meetime" #MeeTime
    "com.huawei.ohos.inputmethod" #CeliaKeyboard

    # Huawei Mobile Services
    "com.huawei.hwid" #HMSCore
    "com.huawei.appmarket" #AppGallery
    "com.huawei.android.hsf" #HMSServiceFramework

    # Gameloft Games
    "com.gameloft.android.GloftAGMP"
    "com.gameloft.android.GloftDBMF"
    "com.gameloft.android.GloftPDMF"
    "com.gameloft.android.GloftPZOR"
    "com.gameloft.android.GloftSCCA"
    "com.gameloft.android.GloftSCRT"
    "com.gameloft.android.GloftSMIF"
    "com.gameloft.android.GloftANIF"
    "com.gameloft.android.GloftDMKF"
    "com.gameloft.android.GloftANPH"
)

for app in ${bloatware[@]}; do
    $ADB shell pm uninstall --user 0 $app
    $ADB shell pm uninstall $app
done

