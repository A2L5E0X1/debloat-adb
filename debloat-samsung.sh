#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Samsung Debloat Script"
echo "### by A2L5E0X1           "
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

# Galaxy S5 TouchWiz 6
adb shell pm uninstall --user 0 com.sec.android.gallery3d.panorama360view #Panorama360
adb shell pm uninstall --user 0 com.samsung.aasaservice #AASAService
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.fileshare #AllShare
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare #AllShare
adb shell pm uninstall --user 0 com.sec.allsharecastplayer #AllShare
adb shell pm uninstall --user 0 com.samsung.android.app.sounddetector #SoundDetector
adb shell pm uninstall --user 0 com.sec.android.automotive.drivelinkremote #DriveLinkRemote
adb shell pm uninstall --user 0 com.sec.android.automotive.drivelink #DriveLink
adb shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent #BBCAgent
adb shell pm uninstall --user 0 com.mobeam.barcodeService #BarcodeService
adb shell pm uninstall --user 0 com.samsung.android.beaconmanager #BeaconManager
adb shell pm uninstall --user 0 flipboard.boxer.app #FlipBoard
adb shell pm uninstall --user 0 flipboard.app #FlipBoard
adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms #KnoxCloudMDM
adb shell pm uninstall --user 0 com.samsung.android.scloud.backup #sCloudBackup
adb shell pm uninstall --user 0 com.samsung.android.scloud #sCloud
adb shell pm uninstall --user 0 com.sec.android.cloudagent #CouldAgent
adb shell pm uninstall --user 0 com.samsung.android.sdk.spenv10 #SPenSDK
adb shell pm uninstall --user 0 com.sec.app.samsungprintservice #SamsungPrintService
adb shell pm uninstall --user 0 com.sec.android.easyonehand #EasyOneHand
adb shell pm uninstall --user 0 com.sec.android.app.easylauncher #EasyLauncher
adb shell pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget #EasyModeContactsWidget
adb shell pm uninstall --user 0 com.sec.android.easysettings #EasySettings
adb shell pm uninstall --user 0 com.sec.esdk.elm #ELM
adb shell pm uninstall --user 0 com.sec.android.mimage.sstudio #MImage
adb shell pm uninstall --user 0 com.sec.android.mimage.photoretouching #MImage
adb shell pm uninstall --user 0 com.sec.android.widget.samsungapps #SamsungAppsWidget
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps #SamsungApps
adb shell pm uninstall --user 0 com.samsung.android.nearby.mediaserver #NearbyMediaserver
adb shell pm uninstall --user 0 com.samsung.android.asksmanager #AsksManager
adb shell pm uninstall --user 0 com.samsung.groupcast #GroupCast
adb shell pm uninstall --user 0 com.sec.android.app.shealth #SHealthApp
adb shell pm uninstall --user 0 com.sec.android.service.health #SHealthService
adb shell pm uninstall --user 0 com.hrs.b2c.android #HRS
adb shell pm uninstall --user 0 b2b.hrs.android.lib #HRSLib
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser #SamsungBrowser
adb shell pm uninstall --user 0 com.sec.kidsplat.installer #KidsInstaller
adb shell pm uninstall --user 0 com.sec.knox.foldercontainer #SecureFolder
adb shell pm uninstall --user 0 com.samsung.knox.appsupdateagent #AppsUpdateAgent
adb shell pm uninstall --user 0 com.sec.knox.knoxsetupwizardclient #KnoxSetup
adb shell pm uninstall --user 0 com.sec.knox.switcher #KnoxSwitcher
adb shell pm uninstall --user 0 com.samsung.knox.rcp.components #KnoxRCP
adb shell pm uninstall --user 0 com.samsung.klmsagent #KLMSAgent
adb shell pm uninstall --user 0 com.sec.enterprise.knox.attestation #KnoxEnterprise
adb shell pm uninstall --user 0 tv.peel.smartremote #SmartRemote
adb shell pm uninstall --user 0 com.infraware.polarisviewer5 #PolarisOffice5
adb shell pm uninstall --user 0 com.samsung.android.sconnect #Sconnect
adb shell pm uninstall --user 0 com.samsung.android.personalpage.service #PersonalPage
adb shell pm uninstall --user 0 com.samsung.android.service.travel #Travel 
adb shell pm uninstall --user 0 com.vlingo.midas #SVoice
adb shell pm uninstall --user 0 com.sec.android.app.billing #Billing
adb shell pm uninstall --user 0 com.sec.android.filter #Filter
adb shell pm uninstall --user 0 com.sec.android.app.SamsungContentsAgent #SamsungContentsAgent
adb shell pm uninstall --user 0 com.sec.android.app.snsimagecache #SnsCache
adb shell pm uninstall --user 0 com.sec.android.app.sns3 #SNS
adb shell pm uninstall --user 0 com.osp.app.signin #SamsungAccountLogin
adb shell pm uninstall --user 0 com.samsung.android.securitylogagent #LogAgent
adb shell pm uninstall --user 0 com.arcsoft.magicshotstudio #MagicStudio
adb shell pm uninstall --user 0 com.cleanmaster.sdk #CMSDK
adb shell pm uninstall --user 0 com.sec.android.app.storycam #StoryCam
adb shell pm uninstall --user 0 com.sec.android.app.tourviewer #TourViewer
adb shell pm uninstall --user 0 com.sec.android.widgetapp.ap.hero.accuweather #AccuWeatherWidget
adb shell pm uninstall --user 0 com.samsung.android.app.withtv #withTV

# Tab S6 Lite OneUI 2.5
adb shell pm uninstall --user 0 com.sec.android.preloadinstaller #AppInstaller
adb shell pm uninstall --user 0 com.samsung.android.app.appsedge #AppsEdge
adb shell pm uninstall --user 0 com.samsung.android.visionarapps #AR-Apps
adb shell pm uninstall --user 0 com.samsung.android.ardrawing #AR-Drawing
adb shell pm uninstall --user 0 com.samsung.android.arzone #AR-Zone
adb shell pm uninstall --user 0 com.samsung.android.spdfnote #PDFNote
adb shell pm uninstall --user 0 com.sec.android.widgetapp.webmanual #WebManual
adb shell pm uninstall --user 0 com.samsung.android.motionphoto.viewer #MotionPhoto
adb shell pm uninstall --user 0 com.samsung.android.app.routines #BixbyRoutines
adb shell pm uninstall --user 0 com.samsung.android.visionintelligence #BixbyVision
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent #BixbyAgent
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy #BixbyAgentStub
adb shell pm uninstall --user 0 com.samsung.android.bixby.service #BixbyService
adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework #BixbyFramework
adb shell pm uninstall --user 0 com.samsung.android.homemode #DailyBoard
adb shell pm uninstall --user 0 com.samsung.android.livestickers #LiveStickers
adb shell pm uninstall --user 0 com.samsung.android.forest #DigitalWellbeing
adb shell pm uninstall --user 0 com.samsung.android.highlightplayer #HighLightPlayer
adb shell pm uninstall --user 0 com.samsung.android.fmm #FindMyMobile
adb shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder #Finder
adb shell pm uninstall --user 0 com.samsung.android.galaxy #GalaxyShop
adb shell pm uninstall com.samsung.android.galaxy
adb shell pm uninstall --user 0 com.samsung.android.themecenter #ThemeService
adb shell pm uninstall --user 0 com.samsung.android.game.gametools #GameBooster
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome #GameLauncher
adb shell pm uninstall --user 0 com.samsung.android.game.gos #GameOptimizingService
adb shell pm uninstall --user 0 com.samsung.android.sm.devicesecurity #DeviceSecurity
adb shell pm uninstall --user 0 com.samsung.android.lool #DeviceManager
adb shell pm uninstall --user 0 com.hiya.service #HiyaService
adb shell pm uninstall --user 0 com.samsung.android.knox.analytics.uploader #AnalyticsUploader
adb shell pm uninstall --user 0 com.samsung.android.app.dofviewer #DOFViewer
adb shell pm uninstall --user 0 com.samsung.android.app.siofviewer #SIOFViewer
adb shell pm uninstall --user 0 com.samsung.android.service.livedrawing #LiveDrawing
adb shell pm uninstall --user 0 com.samsung.android.mdx.kit #MDEServiceFramework
adb shell pm uninstall --user 0 com.samsung.android.mdm #MDM
adb shell pm uninstall --user 0 com.samsung.android.mdx.quickboard #QuickBoard
adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup #BixbyWakeup
adb shell pm uninstall --user 0 com.samsung.android.app.social #Social
adb shell pm uninstall --user 0 com.sec.android.app.ocrservice #OCRService
adb shell pm uninstall --user 0 com.netflix.partner.activation #NetflixPartner
adb shell pm uninstall --user 0 com.sec.penup #PenUP
adb shell pm uninstall com.sec.penup
adb shell pm uninstall --user 0 com.samsung.android.knox.containercore #ContainerCore
adb shell pm uninstall --user 0 com.samsung.android.rubin.app #Rubin
adb shell pm uninstall --user 0 com.samsung.android.service.peoplestripe #People
adb shell pm uninstall --user 0 com.samsung.android.aware.service #QuickShare
adb shell pm uninstall --user 0 com.samsung.android.app.sharelive #QuickShare
adb shell pm uninstall --user 0 com.samsung.android.app.reminder #Reminder
adb shell pm uninstall --user 0 com.samsung.android.app.spage #Daily
adb shell pm uninstall --user 0 com.samsung.android.mobileservice #SamsungExperienceService
adb shell pm uninstall --user 0 com.samsung.android.galaxycontinuity #SamsungFlow
adb shell pm uninstall com.samsung.android.galaxycontinuity
adb shell pm uninstall --user 0 com.samsung.android.mateagent #MateAgent
adb shell pm uninstall --user 0 com.sec.android.app.kidshome #SamsungKids
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller #KidsInstaller
adb shell pm uninstall --user 0 com.sec.location.nsflp2 #SamsungLocationSDK
adb shell pm uninstall --user 0 com.samsung.android.voc #SamsungMembers
adb shell pm uninstall com.samsung.android.voc
adb shell pm uninstall --user 0 com.sec.android.push #PushService
adb shell pm uninstall --user 0 com.samsung.SMT #TTS
adb shell pm uninstall --user 0 com.samsung.android.svoiceime #VoiceIME
adb shell pm uninstall --user 0 com.samsung.android.app.cocktailbarservice #Cocktailbar
adb shell pm uninstall --user 0 com.samsung.android.settings.bixby #BixbySettings
adb shell pm uninstall --user 0 com.samsung.knox.securefolder #SecureFolder
adb shell pm uninstall --user 0 com.samsung.android.fast #SecureWifi
adb shell pm uninstall --user 0 com.skms.android.agent #SKMSAgent
adb shell pm uninstall --user 0 com.samsung.android.location #SamsungLocation
adb shell pm uninstall --user 0 com.sec.android.easyMover.Agent #SmartSwitchAgent
adb shell pm uninstall --user 0 com.samsung.android.smartface #SmartFace
adb shell pm uninstall --user 0 com.samsung.android.oneconnect #SmartThings
adb shell pm uninstall com.samsung.android.oneconnect
adb shell pm uninstall --user 0 com.samsung.android.stickercenter #StickerCenter
adb shell pm uninstall --user 0 com.samsung.systemui.bixby2 #SystemUIBixby2
adb shell pm uninstall --user 0 com.samsung.android.svcagent #SVCAgent
adb shell pm uninstall --user 0 com.samsung.android.icecone #KeyboardContent
adb shell pm uninstall --user 0 com.samsung.android.app.taskedge #Tasks
adb shell pm uninstall --user 0 com.samsung.android.app.tips #Tips
adb shell pm uninstall --user 0 com.sec.android.app.quicktool #Tools
adb shell pm uninstall --user 0 com.samsung.android.service.pentastic #Pentastic
adb shell pm uninstall --user 0 com.samsung.android.service.airviewdictionary #Translate
adb shell pm uninstall --user 0 de.axelspringer.yana.zeropage #upday
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub #WearableInstaller
adb shell pm uninstall --user 0 com.sec.android.daemonapp #Weather
adb shell pm uninstall --user 0 com.samsung.android.net.wifi.wifiguider #Wifi-Tips
adb shell pm uninstall --user 0 com.diotek.sec.lookup.dictionary #Dictionary
adb shell pm uninstall --user 0 com.samsung.android.app.clipboardedge #ClipBoardEdge

# Userdata GApps
adb shell pm uninstall com.google.android.docs #Drive
adb shell pm uninstall com.google.android.videos #PlayVideos
adb shell pm uninstall com.google.android.photos #GooglePhotos
adb shell pm uninstall com.google.android.youtube.music #YTMusic

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
