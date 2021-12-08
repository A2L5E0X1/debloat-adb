#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
types=$(ls ${script_path}/../type)

echo "### Debloat Script
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
echo "Waiting for device..."
$adb_location wait-for-device
echo "Device found!"
$adb_location devices
echo

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

# Start debloat
clear
bash ${script_path}/../type/${selected_type}.sh

# Disconnect ADB
$adb_location kill-server

# Success
echo "Debloat success"
contribute_text
