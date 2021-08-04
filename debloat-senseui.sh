#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### HTC Sense Debloat Script"
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

# HTC Sense 7 Parts - HTC Desire 816
"$ADB" shell pm uninstall --user 0 com.htc.CustomizationSetup #CustomizationSetup
"$ADB" shell pm uninstall --user 0 com.htc.backup #HTC Backup
"$ADB" shell pm uninstall --user 0 com.htc.ptg #HTC Power to Give
"$ADB" shell pm uninstall com.htc.ptg
"$ADB" shell pm uninstall --user 0 com.htc.cs.pns #HTC PushService
"$ADB" shell pm uninstall --user 0 com.htc.oobe.advantage #Advanatge
"$ADB" shell pm uninstall --user 0 com.htc.contacts.frisbee #Frisbee
"$ADB" shell pm uninstall --user 0 com.htc.android.locationpicker #LocationPicker
"$ADB" shell pm uninstall --user 0 com.htc.flexnet #FlexNet
"$ADB" shell pm uninstall --user 0 com.htc.mirrorlinkserver #HTC Mirrorlink
"$ADB" shell pm uninstall --user 0 com.htc.dnatransfer #HTC Filetransfer
"$ADB" shell pm uninstall --user 0 com.htc.task.gtask #Google Tasks
"$ADB" shell pm uninstall --user 0 com.htc.sense.socialnetwork.facebook #HTC Sense Facebook
"$ADB" shell pm uninstall --user 0 com.htc.sense.socialnetwork.googleplus #HTC Sense Google Plus
"$ADB" shell pm uninstall --user 0 com.htc.theme.font.xingothic_en #Font
"$ADB" shell pm uninstall --user 0 com.htc.feedback #Udove
"$ADB" shell pm uninstall --user 0 com.htc.android.voicedictation #HTC Voice Dictation
"$ADB" shell pm uninstall --user 0 com.htc.sense.linkedin #LinkedIn
"$ADB" shell pm uninstall --user 0 com.futuredial #Filetransfer
"$ADB" shell pm uninstall --user 0 com.htc.guide #HTC Guide
"$ADB" shell pm uninstall --user 0 com.htc.sense.ime.langpack.tvalueadd #IME
"$ADB" shell pm uninstall --user 0 com.htc.sense.socialnetwork.instagram #HTC Sense Instagram
"$ADB" shell pm uninstall --user 0 com.htc.club #HTC Club
"$ADB" shell pm uninstall com.htc.club
"$ADB" shell pm uninstall --user 0 com.htc.uibc #uibc
"$ADB" shell pm uninstall --user 0 com.htc.zero #Zoe Video Editor
"$ADB" shell pm uninstall --user 0 com.htc.cs.identity #HTC Account
"$ADB" shell pm uninstall --user 0 com.htc.sense.ime.langpack.mindic #Indic vendor
"$ADB" shell pm uninstall --user 0 com.infraware.docmaster #POLARIS Office 5
"$ADB" shell pm uninstall --user 0 com.google.android.gm.exchange #Exchange Service
"$ADB" shell pm uninstall --user 0 com.htc.AutoMotive #Car
"$ADB" shell pm uninstall --user 0 com.htc.drive.activator #DriveActivator
"$ADB" shell pm uninstall --user 0 com.nero.android.htc.sync #HTC Sync Manager
"$ADB" shell pm uninstall --user 0 com.zoodles.kidmode #Kidmode
"$ADB" shell pm uninstall --user 0 com.htc.locationservicessetting #HTC Locationservice
"$ADB" shell pm uninstall --user 0 com.htc.android.htcsetupwizard #HTC Setupwizard
"$ADB" shell pm uninstall --user 0 com.htc.HTCSpeaker #HTC Speak
"$ADB" shell pm uninstall --user 0 com.futuredial.idevicecloud #iCloudTransfer
"$ADB" shell pm uninstall --user 0 com.htc.AutoMotive.Traffic #Traffic
"$ADB" shell pm uninstall --user 0 com.nero.android.htc.sync.installer #Sync Installer
"$ADB" shell pm uninstall --user 0 com.htc.backupreset #BackupReset
"$ADB" shell pm uninstall --user 0 com.htc.dotmatrix #DotMatrix
"$ADB" shell pm uninstall --user 0 com.htc.sense.socialnetwork.twitter #HTC Sense Twitter
"$ADB" shell pm uninstall --user 0 android.htc.china.location.service #China Location Service
"$ADB" shell pm uninstall --user 0 com.htc.sense.ime.langpack.mvie #viet vendor
"$ADB" shell pm uninstall --user 0 com.htc.sense.ime.langpack.phwr #Handwriting Pack
"$ADB" shell pm uninstall --user 0 com.htc.theme.font.yuen #Chinese Font
"$ADB" shell pm uninstall --user 0 com.htc.autobot.cargps.provider #Car GPS

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
