#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### HTC Sense Debloat Script"
echo "### by A2L5E0X1             "
sleep 1

# Check for ADB
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ERROR: ADB not found! Please install it or set correct PATH!" && exit 255
fi

# Warning
echo "IMPORTANT: Read README.md before you continue!"
echo "Make sure USB-Debugging is enabled on your phone and it's connected to your PC."
echo "If your PC can't find the phone, make sure your PC is authorized."
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

# HTC Sense 7 Parts - HTC Desire 816
adb shell pm uninstall --user 0 com.htc.CustomizationSetup #CustomizationSetup
adb shell pm uninstall --user 0 com.htc.backup #HTC Backup
adb shell pm uninstall --user 0 com.htc.ptg #HTC Power to Give
adb shell pm uninstall com.htc.ptg
adb shell pm uninstall --user 0 com.htc.cs.pns #HTC PushService
adb shell pm uninstall --user 0 com.htc.oobe.advantage #Advanatge
adb shell pm uninstall --user 0 com.htc.contacts.frisbee #Frisbee
adb shell pm uninstall --user 0 com.htc.android.locationpicker #LocationPicker
adb shell pm uninstall --user 0 com.htc.flexnet #FlexNet
adb shell pm uninstall --user 0 com.htc.mirrorlinkserver #HTC Mirrorlink
adb shell pm uninstall --user 0 com.htc.dnatransfer #HTC Filetransfer
adb shell pm uninstall --user 0 com.htc.task.gtask #Google Tasks
adb shell pm uninstall --user 0 com.htc.sense.hsp #Sense Servicepack
adb shell pm uninstall --user 0 com.htc.sense.socialnetwork.facebook #HTC Sense Facebook
adb shell pm uninstall --user 0 com.htc.sense.socialnetwork.googleplus #HTC Sense Google Plus
adb shell pm uninstall --user 0 com.htc.theme.font.xingothic_en #Font
adb shell pm uninstall --user 0 com.htc.feedback #Udove
adb shell pm uninstall --user 0 com.htc.android.voicedictation #HTC Voice Dictation
adb shell pm uninstall --user 0 com.htc.sense.linkedin #LinkedIn
adb shell pm uninstall --user 0 com.futuredial #Filetransfer
adb shell pm uninstall --user 0 com.htc.guide #HTC Guide
adb shell pm uninstall --user 0 com.htc.sense.ime.langpack.tvalueadd #IME
adb shell pm uninstall --user 0 com.htc.sense.socialnetwork.instagram #HTC Sense Instagram
adb shell pm uninstall --user 0 com.htc.club #HTC Club
adb shell pm uninstall com.htc.club
adb shell pm uninstall --user 0 com.htc.uibc #uibc
adb shell pm uninstall --user 0 com.htc.zero #Zoe Video Editor
adb shell pm uninstall --user 0 com.htc.cs.identity #HTC Account
adb shell pm uninstall --user 0 com.htc.sense.ime.langpack.mindic #Indic vendor
adb shell pm uninstall --user 0 com.infraware.docmaster #POLARIS Office 5
adb shell pm uninstall --user 0 com.google.android.gm.exchange #Exchange Service
adb shell pm uninstall --user 0 com.htc.AutoMotive #Car
adb shell pm uninstall --user 0 com.htc.drive.activator #DriveActivator
adb shell pm uninstall --user 0 com.nero.android.htc.sync #HTC Sync Manager
adb shell pm uninstall --user 0 com.zoodles.kidmode #Kidmode
adb shell pm uninstall --user 0 com.htc.locationservicessetting #HTC Locationservice
adb shell pm uninstall --user 0 com.htc.android.htcsetupwizard #HTC Setupwizard
adb shell pm uninstall --user 0 com.htc.HTCSpeaker #HTC Speak
adb shell pm uninstall --user 0 com.futuredial.idevicecloud #iCloudTransfer
adb shell pm uninstall --user 0 com.htc.AutoMotive.Traffic #Traffic
adb shell pm uninstall --user 0 com.nero.android.htc.sync.installer #Sync Installer
adb shell pm uninstall --user 0 com.htc.backupreset #BackupReset
adb shell pm uninstall --user 0 com.htc.dotmatrix #DotMatrix
adb shell pm uninstall --user 0 com.htc.sense.socialnetwork.twitter #HTC Sense Twitter
adb shell pm uninstall --user 0 android.htc.china.location.service #China Location Service
adb shell pm uninstall --user 0 com.htc.sense.ime.langpack.mvie #viet vendor
adb shell pm uninstall --user 0 com.htc.sense.ime.langpack.phwr #Handwriting Pack
adb shell pm uninstall --user 0 com.htc.theme.font.yuen #Chinese Font
adb shell pm uninstall --user 0 com.htc.autobot.cargps.provider #Car GPS

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
