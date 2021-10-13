#!/bin/bash

#
# REMOVE THIS AT PULL-REQUEST
#
# Please replace YOUR_GITHUB_USERNAME with your Github Username
# Please keep same layout as my other Debloat-Scripts
#

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Example Debloat Script
### by A2L5E0X1 + Razuuu
### Thanks to YOUR_GITHUB_USERNAME!"
sleep 1

bloatware=(
#
# REMOVE THIS AT PULL-REQUEST
#
# Please put the package names in "" and then a comment what the app is for or how its called
#
# Example:
#*tab	*"com.example.xd"	#xd example
# Now put your own apps like in the example here:
#
	"1"	# 1
	"2"	# 2

)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done
