#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh
device_brands=$(ls ${script_path}/../types/devices)

clear
echo "### Device Debloat Script
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

# Show all Supported Device Brands
echo "Currently supported devices:"
for i in ${device_brands}; do echo "> $i"; done
echo

# Select Device Brand
echo "Which Device Brand?"; read -p " » " select_device_brand

# Fails if Device Brand not found
if [ ${select_device_brand,,} != ${device_brands,,} ]; then
  echo -e "\nDevice Brand not found!"; contribute_text; exit 1
fi

# Show all Device Model
selected_device_brand=$(ls ${script_path}/../types/devices/ | grep -i ${select_device_brand})
clear
echo "Currently supported models for ${selected_device_brand}:"
for i in $(ls ${script_path}/../types/devices/${selected_device_brand}); do echo "> $i"; done
echo

# Select Device Model
echo "Which Device Model?"; read -p " » " select_device_model

# Fails if Device Model not found
selected_device_model=$(ls ${script_path}/../types/devices/${selected_device_brand} | grep -i ${select_device_model})
if [ ${selected_device_model} != $(ls ${script_path}/../types/devices/${selected_device_brand} | grep -i $selected_device_model) ]; then
  echo -e "\nDevice Brand not found!"; contribute_text; exit 1
fi

# Start Debload
clear
echo -e "Now debload ${selected_device_brand} ${selected_device_model}\n"
bash ${script_path}/../types/devices/${selected_device_brand}/${selected_device_model}

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
contribute_text
