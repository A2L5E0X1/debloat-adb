#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
devices=$(ls ${script_path}/../type/device)

clear
echo "### Device Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

# Check for ADB
if [ "$(which adb)" != "$adb_location" ]; then
	red_message "ERROR: ADB not found! Please install it or set correct PATH!"
	exit 1
fi

# Warning
warning_message

# Waiting for Device
$adb_location wait-for-device
echo "Device found!"
$adb_location devices
echo

# Show all Supported Devices
echo "Currently supported devices:"
for i in ${devices}; do echo "· $(echo ${i} | sed 's/\.[^.]*$//')"; done
echo

# Select Device
echo "Which Device?"; read -p " » " select_device
selected_device=$(ls ${script_path}/../type/device/ | grep -i $select_device | sed 's/\.[^.]*$//')

# Fails if Device not found
if [ ${selected_device} != $devices | grep -i ${select_device} ]; then
  echo -e "\nDevice not found!"; contribute_text; exit 1
fi

# Start Debload
clear
echo -e "Now debloat Device ${selected_device}\n"
bash ${script_path}/../type/device/${selected_device}.sh

# Disconnect ADB
$adb_location kill-server

# Success
echo "Debloat success"
contribute_text
