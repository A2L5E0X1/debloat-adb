#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Samsung Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
	# Galaxy S5 TouchWiz 6
	"com.sec.android.gallery3d.panorama360view"		#Panorama360
	"com.samsung.aasaservice"				#AASAService
	"com.samsung.android.allshare.service.fileshare"	#AllShare
	"com.samsung.android.allshare.service.mediashare"	#AllShare
	"com.sec.allsharecastplayer"				#AllShare
	"com.samsung.android.app.sounddetector"			#SoundDetector
	"com.sec.android.automotive.drivelinkremote"		#DriveLinkRemote
	"com.sec.android.automotive.drivelink"			#DriveLink
	"com.samsung.android.bbc.bbcagent"			#BBCAgent
	"com.mobeam.barcodeService"				#BarcodeService
	"com.samsung.android.beaconmanager"			#BeaconManager
	"flipboard.boxer.app"					#FlipBoard
	"flipboard.app"						#FlipBoard
	"com.sec.enterprise.knox.cloudmdm.smdms"		#KnoxCloudMDM
	"com.samsung.android.scloud.backup"			#sCloudBackup
	"com.samsung.android.scloud"				#sCloud
	"com.sec.android.cloudagent"				#CouldAgent
	"com.samsung.android.sdk.spenv10"			#SPenSDK
	"com.sec.app.samsungprintservice"			#SamsungPrintService
	"com.sec.android.easyonehand"				#EasyOneHand
	"com.sec.android.app.easylauncher"			#EasyLauncher
	"com.sec.android.widgetapp.easymodecontactswidget"	#EasyModeContactsWidget
	"com.sec.android.easysettings"				#EasySettings
	"com.sec.esdk.elm"					#ELM
	"com.sec.android.mimage.sstudio"			#MImage
	"com.sec.android.mimage.photoretouching"		#MImage
	"com.sec.android.widget.samsungapps"			#SamsungAppsWidget
	"com.sec.android.app.samsungapps"			#SamsungApps
	"com.samsung.android.nearby.mediaserver"		#NearbyMediaserver
	"com.samsung.android.asksmanager"			#AsksManager
	"com.samsung.groupcast" 				#GroupCast
	"com.sec.android.app.shealth"				#SHealthApp
	"com.sec.android.service.health"			#SHealthService
	"com.hrs.b2c.android"					#HRS
	"b2b.hrs.android.lib"					#HRSLib
	"com.sec.android.app.sbrowser"				#SamsungBrowser
	"com.sec.kidsplat.installer"				#KidsInstaller
	"com.sec.knox.foldercontainer"				#SecureFolder
	"com.samsung.knox.appsupdateagent"			#AppsUpdateAgent
	"com.sec.knox.knoxsetupwizardclient"			#KnoxSetup
	"com.sec.knox.switcher"					#KnoxSwitcher
	"com.samsung.knox.rcp.components"			#KnoxRCP
	"com.samsung.klmsagent"					#KLMSAgent
	"com.sec.enterprise.knox.attestation"			#KnoxEnterprise
	"tv.peel.smartremote"					#SmartRemote
	"com.infraware.polarisviewer5"				#PolarisOffice5
	"com.samsung.android.sconnect"				#Sconnect
	"com.samsung.android.personalpage.service"		#PersonalPage
	"com.samsung.android.service.travel"			#Travel 
	"com.vlingo.midas"					#SVoice
	"com.sec.android.app.billing"				#Billing
	"com.sec.android.filter"				#Filter
	"com.sec.android.app.SamsungContentsAgent"		#SamsungContentsAgent
	"com.sec.android.app.snsimagecache"			#SnsCache
	"com.sec.android.app.sns3"				#SNS
	"com.osp.app.signin"					#SamsungAccountLogin
	"com.samsung.android.securitylogagent"			#LogAgent
	"com.arcsoft.magicshotstudio"				#MagicStudio
	"com.cleanmaster.sdk"					#CMSDK
	"com.sec.android.app.storycam"				#StoryCam
	"com.sec.android.app.tourviewer"			#TourViewer
	"com.sec.android.widgetapp.ap.hero.accuweather"		#AccuWeatherWidget
	"com.samsung.android.app.withtv"			#withTV

	# Tab S6 Lite OneUI 2.5
	"com.sec.android.preloadinstaller"			#AppInstaller
	"com.samsung.android.app.appsedge"			#AppsEdge
	"com.samsung.android.visionarapps" 			#AR-Apps
	"com.samsung.android.ardrawing"				#AR-Drawing
	"com.samsung.android.arzone"				#AR-Zone
	"com.samsung.android.spdfnote" 				#PDFNote
	"com.sec.android.widgetapp.webmanual"			#WebManual
	"com.samsung.android.motionphoto.viewer"		#MotionPhoto
	"com.samsung.android.app.routines"			#BixbyRoutines
	"com.samsung.android.visionintelligence"		#BixbyVision
	"com.samsung.android.bixby.agent"			#BixbyAgent
	"com.samsung.android.bixby.agent.dummy"			#BixbyAgentStub
	"com.samsung.android.bixby.service"			#BixbyService
	"com.samsung.android.bixbyvision.framework"		#BixbyFramework
	"com.samsung.android.homemode"				#DailyBoard
	"com.samsung.android.livestickers"			#LiveStickers
	"com.samsung.android.forest"				#DigitalWellbeing
	"com.samsung.android.highlightplayer"			#HighLightPlayer
	"com.samsung.android.fmm"				#FindMyMobile
	"com.samsung.android.app.galaxyfinder"			#Finder
	"com.samsung.android.galaxy"				#GalaxyShop
	"com.samsung.android.themecenter"			#ThemeService
	"com.samsung.android.game.gametools"			#GameBooster
	"com.samsung.android.game.gamehome"			#GameLauncher
	"com.samsung.android.game.gos"				#GameOptimizingService
	"com.samsung.android.sm.devicesecurity"			#DeviceSecurity
	"com.samsung.android.lool"				#DeviceManager
	"com.hiya.service"					#HiyaService
	"com.samsung.android.knox.analytics.uploader"		#AnalyticsUploader
	"com.samsung.android.app.dofviewer"			#DOFViewer
	"com.samsung.android.app.siofviewer"			#SIOFViewer
	"com.samsung.android.service.livedrawing" 		#LiveDrawing
	"com.samsung.android.mdx.kit"				#MDEServiceFramework
	"com.samsung.android.mdm"				#MDM
	"com.samsung.android.mdx.quickboard"			#QuickBoard
	"com.samsung.android.bixby.wakeup"			#BixbyWakeup
	"com.samsung.android.app.social"			#Social
	"com.sec.android.app.ocrservice"			#OCRService
	"com.netflix.partner.activation"			#NetflixPartner
	"com.sec.penup"						#PenUP
	"com.samsung.android.knox.containercore"		#ContainerCore
	"com.samsung.android.rubin.app"				#Rubin
	"com.samsung.android.service.peoplestripe"		#People
	"com.samsung.android.aware.service"			#QuickShare
	"com.samsung.android.app.sharelive"			#QuickShare
	"com.samsung.android.app.reminder"			#Reminder
	"com.samsung.android.app.spage"				#Daily
	"com.samsung.android.mobileservice"			#SamsungExperienceService
	"com.samsung.android.galaxycontinuity"			#SamsungFlow
	"com.samsung.android.mateagent"				#MateAgent
	"com.sec.android.app.kidshome"				#SamsungKids
	"com.samsung.android.kidsinstaller"			#KidsInstaller
	"com.sec.location.nsflp2"				#SamsungLocationSDK
	"com.samsung.android.voc"				#SamsungMembers
	"com.sec.android.push"					#PushService
	"com.samsung.SMT"					#TTS
	"com.samsung.android.svoiceime"				#VoiceIME
	"com.samsung.android.app.cocktailbarservice"		#Cocktailbar
	"com.samsung.android.settings.bixby"			#BixbySettings
	"com.samsung.knox.securefolder"				#SecureFolder
	"com.samsung.android.fast"				#SecureWifi
	"com.skms.android.agent"				#SKMSAgent
	"com.samsung.android.location"				#SamsungLocation
	"com.sec.android.easyMover.Agent"			#SmartSwitchAgent
	"com.samsung.android.smartface"				#SmartFace
	"com.samsung.android.oneconnect"			#SmartThings
	"com.samsung.android.stickercenter"			#StickerCenter
	"com.samsung.systemui.bixby2"				#SystemUIBixby2
	"com.samsung.android.svcagent"				#SVCAgent
	"com.samsung.android.icecone"				#KeyboardContent
	"com.samsung.android.app.taskedge"			#Tasks
	"com.samsung.android.app.tips"				#Tips
	"com.sec.android.app.quicktool"				#Tools
	"com.samsung.android.service.pentastic"			#Pentastic
	"com.samsung.android.service.airviewdictionary"		#Translate
	"de.axelspringer.yana.zeropage"				#upday
	"com.samsung.android.app.watchmanagerstub"		#WearableInstaller
	"com.sec.android.daemonapp"				#Weather
	"com.samsung.android.net.wifi.wifiguider"		#Wifi-Tips
	"com.diotek.sec.lookup.dictionary"			#Dictionary
	"com.samsung.android.app.clipboardedge"			#ClipBoardEdge

	# Userdata GApps
	"com.google.android.docs"				#Drive
	"com.google.android.videos"				#PlayVideos
	"com.google.android.photos"				#GooglePhotos
	"com.google.android.youtube.music"			#YTMusic

	# Userdata Bloatware
	"com.spotify.music"					#Spotify
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
