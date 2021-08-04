#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Samsung Debloat Script"
echo "### by A2L5E0X1           "
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

# Galaxy S5 TouchWiz 6
"$ADB" shell pm uninstall --user 0 com.sec.android.gallery3d.panorama360view #Panorama360
"$ADB" shell pm uninstall --user 0 com.samsung.aasaservice #AASAService
"$ADB" shell pm uninstall --user 0 com.samsung.android.allshare.service.fileshare #AllShare
"$ADB" shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare #AllShare
"$ADB" shell pm uninstall --user 0 com.sec.allsharecastplayer #AllShare
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.sounddetector #SoundDetector
"$ADB" shell pm uninstall --user 0 com.sec.android.automotive.drivelinkremote #DriveLinkRemote
"$ADB" shell pm uninstall --user 0 com.sec.android.automotive.drivelink #DriveLink
"$ADB" shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent #BBCAgent
"$ADB" shell pm uninstall --user 0 com.mobeam.barcodeService #BarcodeService
"$ADB" shell pm uninstall --user 0 com.samsung.android.beaconmanager #BeaconManager
"$ADB" shell pm uninstall --user 0 flipboard.boxer.app #FlipBoard
"$ADB" shell pm uninstall --user 0 flipboard.app #FlipBoard
"$ADB" shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms #KnoxCloudMDM
"$ADB" shell pm uninstall --user 0 com.samsung.android.scloud.backup #sCloudBackup
"$ADB" shell pm uninstall --user 0 com.samsung.android.scloud #sCloud
"$ADB" shell pm uninstall --user 0 com.sec.android.cloudagent #CouldAgent
"$ADB" shell pm uninstall --user 0 com.samsung.android.sdk.spenv10 #SPenSDK
"$ADB" shell pm uninstall --user 0 com.sec.app.samsungprintservice #SamsungPrintService
"$ADB" shell pm uninstall --user 0 com.sec.android.easyonehand #EasyOneHand
"$ADB" shell pm uninstall --user 0 com.sec.android.app.easylauncher #EasyLauncher
"$ADB" shell pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget #EasyModeContactsWidget
"$ADB" shell pm uninstall --user 0 com.sec.android.easysettings #EasySettings
"$ADB" shell pm uninstall --user 0 com.sec.esdk.elm #ELM
"$ADB" shell pm uninstall --user 0 com.sec.android.mimage.sstudio #MImage
"$ADB" shell pm uninstall --user 0 com.sec.android.mimage.photoretouching #MImage
"$ADB" shell pm uninstall --user 0 com.sec.android.widget.samsungapps #SamsungAppsWidget
"$ADB" shell pm uninstall --user 0 com.sec.android.app.samsungapps #SamsungApps
"$ADB" shell pm uninstall --user 0 com.samsung.android.nearby.mediaserver #NearbyMediaserver
"$ADB" shell pm uninstall --user 0 com.samsung.android.asksmanager #AsksManager
"$ADB" shell pm uninstall --user 0 com.samsung.groupcast #GroupCast
"$ADB" shell pm uninstall --user 0 com.sec.android.app.shealth #SHealthApp
"$ADB" shell pm uninstall --user 0 com.sec.android.service.health #SHealthService
"$ADB" shell pm uninstall --user 0 com.hrs.b2c.android #HRS
"$ADB" shell pm uninstall --user 0 b2b.hrs.android.lib #HRSLib
"$ADB" shell pm uninstall --user 0 com.sec.android.app.sbrowser #SamsungBrowser
"$ADB" shell pm uninstall --user 0 com.sec.kidsplat.installer #KidsInstaller
"$ADB" shell pm uninstall --user 0 com.sec.knox.foldercontainer #SecureFolder
"$ADB" shell pm uninstall --user 0 com.samsung.knox.appsupdateagent #AppsUpdateAgent
"$ADB" shell pm uninstall --user 0 com.sec.knox.knoxsetupwizardclient #KnoxSetup
"$ADB" shell pm uninstall --user 0 com.sec.knox.switcher #KnoxSwitcher
"$ADB" shell pm uninstall --user 0 com.samsung.knox.rcp.components #KnoxRCP
"$ADB" shell pm uninstall --user 0 com.samsung.klmsagent #KLMSAgent
"$ADB" shell pm uninstall --user 0 com.sec.enterprise.knox.attestation #KnoxEnterprise
"$ADB" shell pm uninstall --user 0 tv.peel.smartremote #SmartRemote
"$ADB" shell pm uninstall --user 0 com.infraware.polarisviewer5 #PolarisOffice5
"$ADB" shell pm uninstall --user 0 com.samsung.android.sconnect #Sconnect
"$ADB" shell pm uninstall --user 0 com.samsung.android.personalpage.service #PersonalPage
"$ADB" shell pm uninstall --user 0 com.samsung.android.service.travel #Travel 
"$ADB" shell pm uninstall --user 0 com.vlingo.midas #SVoice
"$ADB" shell pm uninstall --user 0 com.sec.android.app.billing #Billing
"$ADB" shell pm uninstall --user 0 com.sec.android.filter #Filter
"$ADB" shell pm uninstall --user 0 com.sec.android.app.SamsungContentsAgent #SamsungContentsAgent
"$ADB" shell pm uninstall --user 0 com.sec.android.app.snsimagecache #SnsCache
"$ADB" shell pm uninstall --user 0 com.sec.android.app.sns3 #SNS
"$ADB" shell pm uninstall --user 0 com.osp.app.signin #SamsungAccountLogin
"$ADB" shell pm uninstall --user 0 com.samsung.android.securitylogagent #LogAgent
"$ADB" shell pm uninstall --user 0 com.arcsoft.magicshotstudio #MagicStudio
"$ADB" shell pm uninstall --user 0 com.cleanmaster.sdk #CMSDK
"$ADB" shell pm uninstall --user 0 com.sec.android.app.storycam #StoryCam
"$ADB" shell pm uninstall --user 0 com.sec.android.app.tourviewer #TourViewer
"$ADB" shell pm uninstall --user 0 com.sec.android.widgetapp.ap.hero.accuweather #AccuWeatherWidget
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.withtv #withTV

# Tab S6 Lite OneUI 2.5
"$ADB" shell pm uninstall --user 0 com.sec.android.preloadinstaller #AppInstaller
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.appsedge #AppsEdge
"$ADB" shell pm uninstall --user 0 com.samsung.android.visionarapps #AR-Apps
"$ADB" shell pm uninstall --user 0 com.samsung.android.ardrawing #AR-Drawing
"$ADB" shell pm uninstall --user 0 com.samsung.android.arzone #AR-Zone
"$ADB" shell pm uninstall --user 0 com.samsung.android.spdfnote #PDFNote
"$ADB" shell pm uninstall --user 0 com.sec.android.widgetapp.webmanual #WebManual
"$ADB" shell pm uninstall --user 0 com.samsung.android.motionphoto.viewer #MotionPhoto
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.routines #BixbyRoutines
"$ADB" shell pm uninstall --user 0 com.samsung.android.visionintelligence #BixbyVision
"$ADB" shell pm uninstall --user 0 com.samsung.android.bixby.agent #BixbyAgent
"$ADB" shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy #BixbyAgentStub
"$ADB" shell pm uninstall --user 0 com.samsung.android.bixby.service #BixbyService
"$ADB" shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework #BixbyFramework
"$ADB" shell pm uninstall --user 0 com.samsung.android.homemode #DailyBoard
"$ADB" shell pm uninstall --user 0 com.samsung.android.livestickers #LiveStickers
"$ADB" shell pm uninstall --user 0 com.samsung.android.forest #DigitalWellbeing
"$ADB" shell pm uninstall --user 0 com.samsung.android.highlightplayer #HighLightPlayer
"$ADB" shell pm uninstall --user 0 com.samsung.android.fmm #FindMyMobile
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder #Finder
"$ADB" shell pm uninstall --user 0 com.samsung.android.galaxy #GalaxyShop
"$ADB" shell pm uninstall com.samsung.android.galaxy
"$ADB" shell pm uninstall --user 0 com.samsung.android.themecenter #ThemeService
"$ADB" shell pm uninstall --user 0 com.samsung.android.game.gametools #GameBooster
"$ADB" shell pm uninstall --user 0 com.samsung.android.game.gamehome #GameLauncher
"$ADB" shell pm uninstall --user 0 com.samsung.android.game.gos #GameOptimizingService
"$ADB" shell pm uninstall --user 0 com.samsung.android.sm.devicesecurity #DeviceSecurity
"$ADB" shell pm uninstall --user 0 com.samsung.android.lool #DeviceManager
"$ADB" shell pm uninstall --user 0 com.hiya.service #HiyaService
"$ADB" shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader #AnalyticsUploader
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.dofviewer #DOFViewer
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.siofviewer #SIOFViewer
"$ADB" shell pm uninstall --user 0 com.samsung.android.service.livedrawing #LiveDrawing
"$ADB" shell pm uninstall --user 0 com.samsung.android.mdx.kit #MDEServiceFramework
"$ADB" shell pm uninstall --user 0 com.samsung.android.mdm #MDM
"$ADB" shell pm uninstall --user 0 com.samsung.android.mdx.quickboard #QuickBoard
"$ADB" shell pm uninstall --user 0 com.samsung.android.bixby.wakeup #BixbyWakeup
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.social #Social
"$ADB" shell pm uninstall --user 0 com.sec.android.app.ocrservice #OCRService
"$ADB" shell pm uninstall --user 0 com.netflix.partner.activation #NetflixPartner
"$ADB" shell pm uninstall --user 0 com.sec.penup #PenUP
"$ADB" shell pm uninstall com.sec.penup
"$ADB" shell pm uninstall --user 0 com.samsung.android.knox.containercore #ContainerCore
"$ADB" shell pm uninstall --user 0 com.samsung.android.rubin.app #Rubin
"$ADB" shell pm uninstall --user 0 com.samsung.android.service.peoplestripe #People
"$ADB" shell pm uninstall --user 0 com.samsung.android.aware.service #QuickShare
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.sharelive #QuickShare
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.reminder #Reminder
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.spage #Daily
"$ADB" shell pm uninstall --user 0 com.samsung.android.mobileservice #SamsungExperienceService
"$ADB" shell pm uninstall --user 0 com.samsung.android.galaxycontinuity #SamsungFlow
"$ADB" shell pm uninstall com.samsung.android.galaxycontinuity
"$ADB" shell pm uninstall --user 0 com.samsung.android.mateagent #MateAgent
"$ADB" shell pm uninstall --user 0 com.sec.android.app.kidshome #SamsungKids
"$ADB" shell pm uninstall --user 0 com.samsung.android.kidsinstaller #KidsInstaller
"$ADB" shell pm uninstall --user 0 com.sec.location.nsflp2 #SamsungLocationSDK
"$ADB" shell pm uninstall --user 0 com.samsung.android.voc #SamsungMembers
"$ADB" shell pm uninstall com.samsung.android.voc
"$ADB" shell pm uninstall --user 0 com.sec.android.push #PushService
"$ADB" shell pm uninstall --user 0 com.samsung.SMT #TTS
"$ADB" shell pm uninstall --user 0 com.samsung.android.svoiceime #VoiceIME
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.cocktailbarservice #Cocktailbar
"$ADB" shell pm uninstall --user 0 com.samsung.android.settings.bixby #BixbySettings
"$ADB" shell pm uninstall --user 0 com.samsung.knox.securefolder #SecureFolder
"$ADB" shell pm uninstall --user 0 com.samsung.android.fast #SecureWifi
"$ADB" shell pm uninstall --user 0 com.skms.android.agent #SKMSAgent
"$ADB" shell pm uninstall --user 0 com.samsung.android.location #SamsungLocation
"$ADB" shell pm uninstall --user 0 com.sec.android.easyMover.Agent #SmartSwitchAgent
"$ADB" shell pm uninstall --user 0 com.samsung.android.smartface #SmartFace
"$ADB" shell pm uninstall --user 0 com.samsung.android.oneconnect #SmartThings
"$ADB" shell pm uninstall com.samsung.android.oneconnect
"$ADB" shell pm uninstall --user 0 com.samsung.android.stickercenter #StickerCenter
"$ADB" shell pm uninstall --user 0 com.samsung.systemui.bixby2 #SystemUIBixby2
"$ADB" shell pm uninstall --user 0 com.samsung.android.svcagent #SVCAgent
"$ADB" shell pm uninstall --user 0 com.samsung.android.icecone #KeyboardContent
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.taskedge #Tasks
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.tips #Tips
"$ADB" shell pm uninstall --user 0 com.sec.android.app.quicktool #Tools
"$ADB" shell pm uninstall --user 0 com.samsung.android.service.pentastic #Pentastic
"$ADB" shell pm uninstall --user 0 com.samsung.android.service.airviewdictionary #Translate
"$ADB" shell pm uninstall --user 0 de.axelspringer.yana.zeropage #upday
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub #WearableInstaller
"$ADB" shell pm uninstall --user 0 com.sec.android.daemonapp #Weather
"$ADB" shell pm uninstall --user 0 com.samsung.android.net.wifi.wifiguider #Wifi-Tips
"$ADB" shell pm uninstall --user 0 com.diotek.sec.lookup.dictionary #Dictionary
"$ADB" shell pm uninstall --user 0 com.samsung.android.app.clipboardedge #ClipBoardEdge

# Userdata GApps
"$ADB" shell pm uninstall com.google.android.docs #Drive
"$ADB" shell pm uninstall com.google.android.videos #PlayVideos
"$ADB" shell pm uninstall com.google.android.photos #GooglePhotos
"$ADB" shell pm uninstall com.google.android.youtube.music #YTMusic

# Userdata Bloatware
"$ADB" shell pm uninstall com.spotify.music #Spotify

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
