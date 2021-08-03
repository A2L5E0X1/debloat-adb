#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh

echo "### Appinstaller Script
### by A2L5E0X1"
sleep 1

# Check for ADB
if [ "$(which adb)" != "$adb_location" ]; then red_message "ERROR: ADB not found! Please install it or set correct PATH!"; exit 1; fi

# Check for Git
if [ "$(which git)" != "$git_location" ]; then red_message "ERROR: Git not found! Please install it or set correct PATH!"; exit 1; fi

# Warning
red_message "
IMPORTANT: Read README.md before you continue!
Make sure USB-Debugging is enabled on your phone and it's connected to your PC.
If your PC can't find the phone, make sure your PC is authorized.
Press ENTER to continue. Press CTRL+C to exit."
read

# Fetching APKs
if [ -d ./apps ]; then
    rm -rf ./apps
fi
git clone https://github.com/A2L5E0X1/apps

# Waiting for Device
adb wait-for-device
echo "Device found!"
adb devices
echo "Installation will start soon..."
sleep 3

# Start Installation
./apps/install.sh

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
contribute_text
