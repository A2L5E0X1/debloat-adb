#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Samsung Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
    # Galaxy S5 TouchWiz 6
    "com.samsung.android.allshare.service.fileshare" #AllShare
    "com.samsung.android.allshare.service.mediashare" #AllShare
    "com.sec.allsharecastplayer" #AllShare
    "com.sec.android.automotive.drivelinkremote" #DriveLinkRemote
    "com.sec.android.automotive.drivelink" #DriveLink
    "com.mobeam.barcodeService" #BarcodeService
    "flipboard.boxer.app" #FlipBoard
    "flipboard.app" #FlipBoard
    "com.sec.enterprise.knox.cloudmdm.smdms" #KnoxCloudMDM
    "com.samsung.android.scloud.backup" #sCloudBackup
    "com.samsung.android.scloud" #sCloud
    "com.sec.android.cloudagent" #CouldAgent
    "com.sec.app.samsungprintservice" #SamsungPrintService
    "com.sec.android.easyonehand" #EasyOneHand
    "com.sec.android.app.easylauncher" #EasyLauncher
    "com.sec.android.widgetapp.easymodecontactswidget" #EasyModeContactsWidget
    "com.sec.android.easysettings" #EasySettings
    "com.sec.esdk.elm" #ELM
    "com.sec.android.widget.samsungapps" #SamsungAppsWidget
    "com.sec.android.app.samsungapps" #SamsungApps
    "com.samsung.android.nearby.mediaserver" #NearbyMediaserver
    "com.samsung.android.asksmanager" #AsksManager
    "com.samsung.groupcast" #GroupCast
    "com.sec.android.app.shealth" #SHealthApp
    "com.sec.android.service.health" #SHealthService
    "com.hrs.b2c.android" #HRS
    "b2b.hrs.android.lib" #HRSLib
    "com.sec.android.app.sbrowser" #SamsungBrowser
    "com.sec.kidsplat.installer" #KidsInstaller
    "com.sec.knox.foldercontainer" #SecureFolder
    "com.samsung.knox.appsupdateagent" #AppsUpdateAgent
    "com.sec.knox.knoxsetupwizardclient" #KnoxSetup
    "com.sec.knox.switcher" #KnoxSwitcher
    "com.samsung.knox.rcp.components" #KnoxRCP
    "com.samsung.klmsagent" #KLMSAgent
    "com.sec.enterprise.knox.attestation" #KnoxEnterprise
    "tv.peel.smartremote" #SmartRemote
    "com.infraware.polarisviewer5" #PolarisOffice5
    "com.samsung.android.sconnect" #Sconnect
    "com.samsung.android.personalpage.service" #PersonalPage
    "com.samsung.android.service.travel" #Travel
    "com.vlingo.midas" #SVoice
    "com.sec.android.app.billing" #Billing
    "com.sec.android.filter" #Filter
    "com.sec.android.app.SamsungContentsAgent" #SamsungContentsAgent
    "com.sec.android.app.snsimagecache" #SnsCache
    "com.sec.android.app.sns3" #SNS
    "com.osp.app.signin" #SamsungAccountLogin
    "com.samsung.android.securitylogagent" #LogAgent
    "com.cleanmaster.sdk" #CMSDK
    "com.sec.android.widgetapp.ap.hero.accuweather" #AccuWeatherWidget
    "com.samsung.android.app.withtv" #withTV

    # Galaxy S10e Oneui 3.1
    "com.sec.android.widgetapp.samsungapps" #GalaxyEssentialsWidget
    "com.samsung.android.themestore" #GalaxyThemes
    "com.sec.android.app.chromecustomizations" #ChromeCustomizations
    "com.samsung.android.aremoji" #AREmoji
    "com.samsung.android.mapsagent" #ApplicationRecommendations
    "com.samsung.android.service.livedrawing" #LiveMessages
    "com.samsung.android.kidsinstaller" #KidsInstaller
    "com.samsung.sree" #GlobalGoals
    "com.samsung.android.game.gamehome" #GameLauncher
    "com.sec.android.daemonapp" #Weather
    "de.axelspringer.yana.zeropage" #upday
    "com.samsung.android.app.watchmanager" #Wearable
    "com.samsung.android.net.wifi.wifiguider" #WifiTips
    "com.samsung.android.bixby.service" #BixbyDictation
    "com.samsung.android.app.tips" #Tips
    "com.samsung.android.bixby.agent" #BixbyVoice
    "com.samsung.android.hmt.vrsvc" #GearVRService
    "com.samsung.android.game.gametools" #GameBooster
    "com.samsung.android.app.simplesharing" #LinkSharing
    "com.samsung.android.app.reminder" #Reminder
    "com.samsung.android.ardrawing" #ARDoodle
    "com.samsung.android.ipsgeofence" #SamsungVisitIn
    "com.samsung.android.themecenter" #ThemeCenter
    "com.epicgames.portal" #FortniteInstaller
    "com.sec.spp.push" #SamsungPushService
    "com.samsung.android.app.routines" #BixbyRoutines
    "com.samsung.android.arzone" #ARZone
    "com.samsung.android.forest" #DigitalWellbeing
    "com.samsung.android.galaxy" #GalaxyShop
    "com.samsung.android.beaconmanager" #SmartThings
    "com.samsung.android.stickercenter" #StickerCenter
    "com.samsung.android.oneconnect" #SmartThings
    "com.sec.android.autodoodle.service" #AutoDoodle
    "com.sec.android.app.quicktool" #Tools
    "com.samsung.android.fmm" #FindMyMobile
    "com.samsung.android.mdx" #LinkToWindows
    "com.samsung.android.voc" #SamsungMembers
    "com.samsung.android.bixby.wakeup" #VoiceWakeup
    "com.samsung.android.app.kidshome" #Kids
    "com.samsung.android.fast" #SecureWIFI
    "com.samsung.android.app.spage" #Free
    "com.samsung.android.visionintelligence" #BixbyVision
    "com.samsung.android.livestickers" #DECOPICS
    "com.samsung.android.app.watchmanagerstub" #WearableManagerInstaller
    "com.samsung.android.svoiceime" #VoiceInput
    "com.samsung.android.mateagent" #GalaxyFriends
    "com.hiya.star" #HiyaService
    "com.samsung.android.samsungpassautofill" #SamsungPassAutofill
    "com.sec.android.widgetapp.webmanual" #Usermanual
    "com.samsung.android.bixby.agent.dummy" #BixbyVoiceStub

    # Tab S6 Lite OneUI 3.1
    "com.sec.location.nsflp2" #LocationSDK
    "com.samsung.android.service.airviewdictionary" #Translate
    "com.netflix.partner.activation" #PartnerNetlixActivation
    "com.samsung.android.themecenter" #ThemeCenter
    "com.samsung.android.icecone" #KeyboardContent
    "com.samsung.android.game.gos" #GOS
    "com.sec.penup" #PENUP
    "com.sec.android.app.kidshome" #KidsHome
    "com.samsung.android.galaxycontinuity" #SamsungFlow
    "com.samsung.android.homemode" #DailyBoard

    # Userdata GApps
    "com.google.android.docs" #Drive
    "com.google.android.videos" #PlayVideos
    "com.google.android.photos" #GooglePhotos
    "com.google.android.youtube.music" #YTMusic

    # Userdata Bloatware
    "com.spotify.music" #Spotify
)

for app in ${bloatware[@]}; do
    $ADB shell pm uninstall --user 0 $app
    $ADB shell pm uninstall $app
done
