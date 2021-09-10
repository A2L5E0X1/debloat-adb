#!/bin/bash

#
# This Script is by Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh


# This is a custom Debloat file, remove "#" and add the package name

#$adb_location shell pm uninstall --user 0 your.app

# or use bash loop:
# bloatware=(
#	"your.app"	# Your App
# )
#
#for app in ${bloatware[@]}
#do
#	$adb_location shell pm uninstall --user 0 $app
#	$adb_location shell pm uninstall $app
#done
