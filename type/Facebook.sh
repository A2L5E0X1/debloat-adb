#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Facebook Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
	# Facebook Parts, they are not needed, even if you are using Facebook
	"com.facebook.oxygen.installer"		#Facebook Installer
	"com.facebook.oxygen.services"		#Facebook Services
	"com.facebook.oxygen.appmanager"	#Facebook Appmanager
	"com.facebook.oxygen.system"		#Facebook System
	"com.facebook.system"			#Facebook System
	"com.facebook.appmanager"		#Facebook Appmanager
	"com.facebook.services"			#Facebook Services
	"com.facebook.installer"		#Facebook Installer
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
