#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Bloatware Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
	# Bloatware
	"com.hp.android.printservice"		#HP Printservice
	"com.mobilesrepublic.appy"		#NewsRepublic
	"com.facebook.katana"			#Facebook
	"com.facebook.orca"	 		#Messanger
	"com.twitter.android"	 		#Twitter
	"com.microsoft.office.word"		#MS Word
	"com.microsoft.office.onenote"		#MS OneNote
	"com.microsoft.office.excel"		#MS Excel
	"com.dropbox.android"			#Dropbox
	"com.microsoft.skydrive"		#OneDrive
	"com.microsoft.office.powerpoint"	#MS Powerpoint
	"com.microsoft.office.outlook"		#MS Outlook
	"com.skype.raider"			#Skype
	"com.microsoft.office.officehubrow"	#Office
	"com.spotify.music"			#Spotify
	"com.netflix.mediaclient"		#Netflix
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
