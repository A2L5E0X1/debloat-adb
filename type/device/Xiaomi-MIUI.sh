#!/bin/bash

#
# This Script is by DarkJoker360 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Xiaomi MIUI Debloat Script
### by DarkJoker360 + Razuuu"
sleep 1

bloatware=(
	# MIUI apps - Took from MIUI 12 Q
	"com.mi.globalbrowser"			# Mi Browser
	"com.miui.notes"			# Mi Browser
	"com.xiaomi.mipicks"			# GetApps
	"com.miui.miwallpaper"			# Mi Wallpaper
	"com.xiaomi.midrop"			# Mi Drop
	"com.miui.compass"			# Compass
	"com.miui.securitycenter"		# Security
	"com.xiaomi.payment"			# Mi Coins
	"com.miui.fm"				# FM Radio
	"cn.wps.xiaomi.abroad.lite"		# Mi WPS Lite
	"com.miui.screenrecorder"		# Screenrecorder
	"com.miui.misound"			# Mi Sound
	"com.xiaomi.scanner"			# Scanner
	"com.miui.calculator"			# Calculator
	"com.duokan.phone.remotecontroller"	# Mi Remote controller
	"com.miui.android.fashiongallery"	# Carousel wallpapers
	"com.miui.videoplayer"			# Mi Videos
	"com.miui.player"			# Mi Music
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
