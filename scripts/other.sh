#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
other=$(ls ${script_path}/../type/other)

clear
echo "### Other Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

# Check for ADB
if [ "$(which adb)" != "$adb_location" ]; then
	red_message "ERROR: ADB not found! Please install it or set correct PATH!"
	exit 1
fi

# Warning
warning_message

# Waiting for device
echo "Waiting for device..."
$adb_location wait-for-device
echo "Device found!"
$adb_location devices
echo

# Show all supported parts
echo "Currently supported parts:"
for i in ${other}; do echo "· $(echo ${i} | sed 's/\.[^.]*$//')"; done
echo

# Select part
echo "Which part?"; read -p " » " select_part
selected_part=$(ls ${script_path}/../type/other/ | grep -i $select_part | sed 's/\.[^.]*$//')

# Fail if part not found
if [ ${selected_part} != $other | grep -i ${select_part} ]; then
  echo -e "\nPart not found!"; contribute_text; exit 1
fi

# Start debloat
clear
bash ${script_path}/../type/other/${selected_part}.sh

# Disconnect ADB
$adb_location kill-server

# Success
echo "Debloat success"
contribute_text
