#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
types=$(ls ${script_path}/../type)

echo "### Revert Script
### by A2L5E0X1 + Razuuu"
sleep 1

# Check for ADB
if [ ! -f $ADB ]; then
    red_message "ERROR: ADB not found! Please install it or add it to your PATH!"
    exit 1
fi

# Warning
warning_message

# Waiting for Device
echo "Waiting for device..."
$ADB wait-for-device
echo "Device found!"
$ADB devices

# Check if your device supports this feature
if [[ $($ADB shell "getprop ro.build.version.sdk" | tr -d $'\r' | bc) -lt 28 ]]; then
    red_message "ERROR: Your device does not support this feature because it doesn't have Android 9 (SDK 28) or newer.\nYou have to factory reset your device to revert the debloats!"
    exit 1
fi

# Show all available types
echo "Currently available types:"
for i in ${types}; do
    if [ ! ${i} == "Example.sh" ]; then
	echo "· $(echo ${i} | sed 's/\.[^.]*$//')"
    fi
done
echo

# Select Type
echo "Enter Type"; read -p " » " select_type
selected_type=$(ls ${script_path}/../type | grep -i $select_type | sed 's/\.[^.]*$//')

# Fail if type not found
if [ ${selected_type} != $types | grep -i ${select_type} ]; then
    echo -e "\nType not found!"; exit 1
fi

# Revert debloat
clear
source ${script_path}/../type/${selected_type}.sh
echo "Reverting debloat..."

for app in ${bloatware[@]}; do
    $ADB shell pm install-existing $app
done

post_revert

# Disconnect ADB
$ADB kill-server

# Success
echo "Debloat success"
contribute_text
