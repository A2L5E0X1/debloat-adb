#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Huawei Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
	# EMUI 5 Parts - VNS-L21C432B506
	"com.huawei.android.chr"				#CHR Service
	"com.huawei.phoneservice" 				#HiCare
	"com.huawei.iconnect"					#iconnect
	"com.huawei.hwid"					#Huawei Account Login
	"com.huawei.android.instantshare"			#Huawei Share
	"com.huawei.indexsearch.observer"			#indexsearch
	"com.huawei.indexsearch" 				#indexsearch
	"com.huawei.vassistant"					#HiVoice
	"com.huawei.watch.sync"					#WatchSync
	"com.huawei.hwstartupguide"				#Startup Guide
	"com.huawei.hwaps"					#HwAps
	"com.huawei.powergenie"					#Power Genius
	"com.huawei.scanner"					#Scanner
	"com.huawei.iaware"					#iAware
	"com.huawei.mmitest"					#MMITest
	"com.huawei.autoinstallapkfrommcc"			#Informations
	"com.android.partnerbrowsercustomizations.tmobile"	#T-Mobile Browser Customizations
	"com.huawei.trustagent"					#Smart unlock
	"com.huawei.wifiprobqeservice" 				#HwWifiproBqeService
	"com.huawei.compass"					#Compass
	"com.android.hwmirror"					#Mirror
	"com.huawei.gamebox.global"				#HiGame
	"com.huawei.appmarket"					#AppGallery
	"com.huawei.health"					#Health
	"com.huawei.KoBackup"					#Backup

	# EMUI 8 Parts - WAS-LX1 8.0.0.397(C432)
	"com.huawei.hifolder"					#AppAdvisor
	"com.huawei.android.tips"				#Tips
	"com.huawei.synergy"					#HwSynergy
	"com.huawei.hiview"					#HiView
	"com.huawei.nearby"					#Nearby
	"com.huawei.intelligent"				#HUAWEI Assistant
	"com.huawei.recsys"					#HwIntelligentRecSystem
	"com.huawei.gameassistant"				#Gameassistant
	"com.huawei.hiviewtunnel"				#HiViewTunnel
	"com.huawei.tips"					#Tips
	"com.huawei.android.totemweather"			#Weather Data Service
	"com.huawei.android.totemweatherapp"			#Weather
	"com.huawei.android.totemweatherwidget"			#Weather Widget
	"com.huawei.trustcircle"				#Device authentication service
	"com.qeexo.smartshot"					#Smart screenshots
	"com.huawei.android.instantonline"			#HwInstantOnline
	"com.huawei.hicloud"					#Cloud
	"com.huawei.android.pushagent"				#Push Service
	"com.huawei.android.hwupgradeguide"			#HwUpgradeGuide
	"com.huawei.hwdetectrepair"				#Smart diagnosis
	"com.huawei.bd"						#HwUE
	"com.hicloud.android.clone"				#Phone Clone

	# EMUI 10 Parts - HRY-LX1C432
	"com.huawei.wallet"					#Wallet

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
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done

