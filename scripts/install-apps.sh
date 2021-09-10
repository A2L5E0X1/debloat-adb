#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh

echo "### Appinstaller Script"
echo "### by A2L5E0X1        "
sleep 1


# Check for ADB
if [ "$(which adb)" != "$adb_location" ]; then
    echo "ERROR: ADB not found! Please install it or set correct ADB path!"; exit 255
fi

# Check for GIT
if [ "$(which git)" != "$git_location" ]; then
    echo "ERROR: GIT not found! Please install it or set correct GIT path!"; exit 255
fi

# Warning
warning_message

# Fetching APKs
if [ -d ${script_path}/../apps ]; then
    rm -rf ${script_path}/../apps
fi
$git_location clone https://github.com/A2L5E0X1/apps ${script_path}/../apps

# Waiting for Device
$adb_location wait-for-device
echo "Device found!"
$adb_location devices
echo "Installation will start soon..."
sleep 3

# Install Apps
for APKS in $(find ${script_path}/../apps/apk -name *.apk); do $adb_location install $APKS; done

# Disconnect ADB
$adb_location kill-server

# Success
echo "Install success"
contribute_text
