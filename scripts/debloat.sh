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
$ADB kill-server

# Success
echo "Debloat success"
contribute_text
