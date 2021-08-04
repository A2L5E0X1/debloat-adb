#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Bloatware Debloat Script"
echo "### by A2L5E0X1             "
sleep 1

# Config
ADB="/usr/bin/adb"

# Check for ADB
if [ "$(which adb)" != "$ADB" ]; then
    echo "ERROR: ADB not found! Please install it or set correct ADB path!"; exit 255
fi

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
"$ADB" wait-for-device
echo "Device found!"
"$ADB" devices
echo "Debloat will start soon..."
sleep 3

# Bloatware
"$ADB" shell pm uninstall --user 0 com.hp.android.printservice #HP Printservice
"$ADB" shell pm uninstall --user 0 com.mobilesrepublic.appy #NewsRepublic
"$ADB" shell pm uninstall --user 0 com.facebook.katana #Facebook
"$ADB" shell pm uninstall --user 0 com.facebook.orca #Messanger
"$ADB" shell pm uninstall --user 0 com.twitter.android #Twitter
"$ADB" shell pm uninstall --user 0 com.microsoft.office.word #MS Word
"$ADB" shell pm uninstall --user 0 com.microsoft.office.onenote #MS OneNote
"$ADB" shell pm uninstall --user 0 com.microsoft.office.excel #MS Excel
"$ADB" shell pm uninstall --user 0 com.dropbox.android #Dropbox
"$ADB" shell pm uninstall --user 0 com.microsoft.skydrive #OneDrive
"$ADB" shell pm uninstall --user 0 com.microsoft.office.powerpoint #MS Powerpoint
"$ADB" shell pm uninstall --user 0 com.microsoft.office.outlook #MS Outlook
"$ADB" shell pm uninstall --user 0 com.skype.raider #Skype
"$ADB" shell pm uninstall --user 0 com.microsoft.office.officehubrow #Office
"$ADB" shell pm uninstall --user 0 com.spotify.music #Spotify
"$ADB" shell pm uninstall --user 0 com.netflix.mediaclient #Netflix

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
