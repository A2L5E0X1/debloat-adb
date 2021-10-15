#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh

clear
echo "### Appinstaller Script
### by A2L5E0X1 + Razuuu"
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
if [ -d ${script_path}/../tmp ]; then
    echo "Deleting old apks..."
    rm -rf ${script_path}/../tmp/*.apk
else
    mkdir ${script_path}/../tmp
fi
echo "Fetching APKs..."
echo "For APK reference check APPS.md"
applist=(
	"Aurora.apk+https://files.auroraoss.com/AuroraStore/Stable/AuroraStore_4.0.7.apk"
	"Bromite.apk+https://github.com/bromite/bromite/releases/download/93.0.4577.110/arm_ChromePublic.apk"
	"F-Droid.apk+https://f-droid.org/repo/org.fdroid.fdroid_1014002.apk"
	"K9Mail.apk+https://f-droid.org/repo/com.fsck.k9_29004.apk"
	"MaterialFiles.apk+https://f-droid.org/repo/me.zhanghai.android.files_25.apk"
	"Metro.apk+https://f-droid.org/repo/io.github.muntashirakon.Music_10503.apk"
	"NewPipe.apk+https://archive.newpipe.net/fdroid/repo/NewPipe_v0.21.12.apk"
	"OpenBoard.apk+https://f-droid.org/repo/org.dslul.openboard.inputmethod.latin_15.apk"
	"QKSMS.apk+https://f-droid.org/repo/com.moez.QKSMS_2218.apk"
	"SimpleGallery.apk+https://f-droid.org/repo/com.simplemobiletools.gallery.pro_353.apk"
)

for APPS in ${applist[@]}; do apks=$(echo $APPS | sed 's/+/ /g'); wget -O ${script_path}/../tmp/$apks; done

# Waiting for Device
echo "Waiting for device..."
$adb_location wait-for-device
echo "Device found!"
$adb_location devices
echo "Installation will start soon..."
sleep 3

# Install Apps
for APKS in $(find ${script_path}/../tmp -name *.apk)
do
	$adb_location install $APKS
done

# Disconnect ADB
$adb_location kill-server

# Success
echo "Install success"
contribute_text
