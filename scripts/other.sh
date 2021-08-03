#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
other=$(ls ${script_path}/../types/other)

clear
echo "### Other Debloat Script
### by A2L5E0X1"
sleep 1

# Check for ADB
if [ "$(which adb)" != "$adb_location" ]; then red_message "ERROR: ADB not found! Please install it or set correct PATH!"; exit 1; fi

# Warning
red_message "
IMPORTANT: Read README.md before you continue!
Make sure USB-Debugging is enabled on your phone and it's connected to your PC.
If your PC can't find the phone, make sure your PC is authorized.
Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
adb wait-for-device
echo "Device found!"
adb devices
echo

# Show all Supported this parts
echo "Currently supported are this parts:"
for i in ${other}; do echo "> $i"; done
echo

# Select Device Part
echo "Which part?"; read -p " » " select_part
selected_part=$(ls ${script_path}/../types/other/ | grep -i $select_part)

# Fails if part not found
if [ ${selected_part} != $other | grep -i ${select_part} ]; then
  echo -e "\nPart not found!"; contribute_text; exit 1
fi

# Start Debload
clear
echo -e "Now debload Parts of ${selected_part}\n"
bash ${script_path}/../types/devices/other/${selected_part}

# Success
echo "Debloat success"
contribute_text
