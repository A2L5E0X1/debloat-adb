#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/variables_and_functions.sh

echo "### Appinstaller Script
### by A2L5E0X1 + Razuuu"
sleep 1


# Check for ADB
if [ ! -f $ADB ]; then
    red_message "ERROR: ADB not found! Please install it or add it to your PATH!"
    exit 1
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
    "Aurora.apk+https://files.auroraoss.com/AuroraStore/Stable/AuroraStore_4.1.1.apk"
    "Bromite.apk+https://github.com/bromite/bromite/releases/latest/download/arm_ChromePublic.apk"
    "F-Droid.apk+https://f-droid.org/repo/org.fdroid.fdroid_1015050.apk"
    "K9Mail.apk+https://f-droid.org/repo/com.fsck.k9_30000.apk"
    "MaterialFiles.apk+https://f-droid.org/repo/me.zhanghai.android.files_29.apk"
    "Metro.apk+https://f-droid.org/repo/io.github.muntashirakon.Music_10503.apk"
    "NewPipe.apk+https://archive.newpipe.net/fdroid/repo/NewPipe_v0.23.0.apk"
    "OpenBoard.apk+https://f-droid.org/repo/org.dslul.openboard.inputmethod.latin_18.apk"
    "QKSMS.apk+https://f-droid.org/repo/com.moez.QKSMS_2218.apk"
    "SimpleGallery.apk+https://f-droid.org/repo/com.simplemobiletools.gallery.pro_361.apk"
)

for APPS in ${applist[@]}; do
    apks=$(echo $APPS | sed 's/+/ /g'); wget -O ${script_path}/../tmp/$apks
done

# Waiting for Device
echo "Waiting for device..."
$ADB wait-for-device
echo "Device found!"
$ADB devices
echo "Installation will start soon..."
sleep 3

# Install Apps
for APKS in $(find ${script_path}/../tmp -name *.apk); do
    $ADB install $APKS
done

# Disconnect ADB
$ADB kill-server

# Success
echo "Install success"
contribute_text
