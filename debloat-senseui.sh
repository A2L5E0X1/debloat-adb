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
    "com.htc.CustomizationSetup"                    # CustomizationSetup
    "com.htc.backup"                                # HTC Backup
    "com.htc.ptg"                                   # HTC Power to Give
    "com.htc.cs.pns"                                # HTC PushService
    "com.htc.oobe.advantage"                        # Advanatge
    "com.htc.contacts.frisbee"                      # Frisbee
    "com.htc.android.locationpicker"                # LocationPicker
    "com.htc.flexnet"                               # FlexNet
    "com.htc.mirrorlinkserver"                      # HTC Mirrorlink
    "com.htc.dnatransfer"                           # HTC Filetransfer
    "com.htc.task.gtask"                            # Google Tasks
    "com.htc.sense.hsp"                             # Sense Servicepack
    "com.htc.sense.socialnetwork.facebook"          # HTC Sense Facebook
    "com.htc.sense.socialnetwork.googleplus"        # HTC Sense Google Plus
    "com.htc.theme.font.xingothic_en"               # Font
    "com.htc.feedback"                              # Udove
    "com.htc.android.voicedictation"                # HTC Voice Dictation
    "com.htc.sense.linkedin"                        # LinkedIn
    "com.futuredial"                                # Filetransfer
    "com.htc.guide"                                 # HTC Guide
    "com.htc.sense.ime.langpack.tvalueadd"          # IME shit
    "com.htc.sense.socialnetwork.instagram"         # HTC Sense Instagram
    "com.htc.club"                                  # HTC Club
    "com.htc.uibc"                                  # uibc
    "com.htc.zero"                                  # Zoe Video Editor
    "com.htc.cs.identity"                           # HTC Account
    "com.htc.sense.ime.langpack.mindic"             # Indic vendor
    "com.infraware.docmaster"                       # POLARIS Office 5
    "com.google.android.gm.exchange"                # Exchange Service
    "com.htc.AutoMotive"                            # Car
    "com.htc.drive.activator"                       # DriveActivator
    "com.nero.android.htc.sync"                     # HTC Sync Manager
    "com.zoodles.kidmode"                           # Kidmode
    "com.htc.locationservicessetting"               # HTC Locationservice
    "com.htc.android.htcsetupwizard"                # HTC Setupwizard
    "com.htc.HTCSpeaker"                            # HTC Speak
    "com.futuredial.idevicecloud"                   # iCloudTransfer
    "com.htc.AutoMotive.Traffic"                    # Traffic
    "com.nero.android.htc.sync.installer"           # Sync Installer
    "com.htc.backupreset"                           # BackupReset
    "com.htc.dotmatrix"                             # DotMatrix
    "com.htc.sense.socialnetwork.twitter"           # HTC Sense Twitter
    "android.htc.china.location.service"            # China Location Service
    "com.htc.sense.ime.langpack.mvie"               # Viet vendor
    "com.htc.sense.ime.langpack.phwr"               # Handwriting Pack
    "com.htc.theme.font.yuen"                       # Chinese Font
    "com.htc.autobot.cargps.provider"               # Car GPS
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
