#!/bin/bash

#
# REMOVE THIS AT PULL-REQUEST
#
# Please replace YOUR_GITHUB_USERNAME with your Github Username
# Please keep same layout as my other Debloat-Scripts
#

#
# This Script is by A2L5E0X1 + YOUR_GITHUB_USERNAME
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Bloatware Debloat Script
### by A2L5E0X1 + YOUR_GITHUB_USERNAME"
sleep 1

bloatware=(
	"com.package.name"	#Please define AppName or what the App is for here
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
