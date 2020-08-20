#!/bin/bash
echo "########################"
echo "HTC Sense Debloat Script"
echo "by GG2501YT             "
echo "########################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## HTC Sense 7 Parts (HTC Desire 816)
BLOAT=(
    "android.htc.china.location.service"            # China Location Service
    "com.futuredial"                                # Filetransfer
    "com.futuredial.idevicecloud"                   # iCloudTransfer
    "com.google.android.gm.exchange"                # Exchange Service
    "com.htc.AutoMotive"                            # Car
    "com.htc.AutoMotive.Traffic"                    # Traffic
    "com.htc.CustomizationSetup"                    # CustomizationSetup
    "com.htc.HTCSpeaker"                            # HTC Speak
    "com.htc.android.htcsetupwizard"                # HTC Setupwizard
    "com.htc.android.locationpicker"                # LocationPicker
    "com.htc.android.voicedictation"                # HTC Voice Dictation
    "com.htc.autobot.cargps.provider"               # Car GPS
    "com.htc.backup"                                # HTC Backup
    "com.htc.backupreset"                           # BackupReset
    "com.htc.club"                                  # HTC Club
    "com.htc.contacts.frisbee"                      # Frisbee
    "com.htc.cs.identity"                           # HTC Account
    "com.htc.cs.pns"                                # HTC PushService
    "com.htc.dnatransfer"                           # HTC Filetransfer
    "com.htc.dotmatrix"                             # DotMatrix
    "com.htc.drive.activator"                       # DriveActivator
    "com.htc.feedback"                              # Udove
    "com.htc.flexnet"                               # FlexNet
    "com.htc.guide"                                 # HTC Guide
    "com.htc.locationservicessetting"               # HTC Locationservice
    "com.htc.mirrorlinkserver"                      # HTC Mirrorlink
    "com.htc.oobe.advantage"                        # Advanatge
    "com.htc.ptg"                                   # HTC Power to Give
    "com.htc.sense.hsp"                             # Sense Servicepack
    "com.htc.sense.ime.langpack.mindic"             # Indic vendor
    "com.htc.sense.ime.langpack.mvie"               # Viet vendor
    "com.htc.sense.ime.langpack.phwr"               # Handwriting Pack
    "com.htc.sense.ime.langpack.tvalueadd"          # IME shit
    "com.htc.sense.linkedin"                        # LinkedIn
    "com.htc.sense.socialnetwork.facebook"          # HTC Sense Facebook
    "com.htc.sense.socialnetwork.googleplus"        # HTC Sense Google Plus
    "com.htc.sense.socialnetwork.instagram"         # HTC Sense Instagram
    "com.htc.sense.socialnetwork.twitter"           # HTC Sense Twitter
    "com.htc.task.gtask"                            # Google Tasks
    "com.htc.theme.font.xingothic_en"               # Font
    "com.htc.theme.font.yuen"                       # Chinese Font
    "com.htc.uibc"                                  # uibc
    "com.htc.zero"                                  # Zoe Video Editor
    "com.infraware.docmaster"                       # POLARIS Office 5
    "com.nero.android.htc.sync"                     # HTC Sync Manager
    "com.nero.android.htc.sync.installer"           # Sync Installer
    "com.zoodles.kidmode"                           # Kidmode
)

for APP in "${BLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

USER_BLOAT=(
    "com.htc.club"
    "com.htc.ptg"
)

for USER_APP in "${USER_BLOAT[@]}"
do
    adb shell pm uninstall "$USER_APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
