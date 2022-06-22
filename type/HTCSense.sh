#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### HTC SenseUI Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
    # HTC Sense 7 Parts - HTC Desire 816
    "com.htc.CustomizationSetup" #CustomizationSetup
    "com.htc.backup" #HTC Backup
    "com.htc.ptg" #HTC Power to Give
    "com.htc.cs.pns" #HTC PushService
    "com.htc.oobe.advantage" #Advanatge
    "com.htc.contacts.frisbee" #Frisbee
    "com.htc.android.locationpicker" #LocationPicker
    "com.htc.flexnet" #FlexNet
    "com.htc.mirrorlinkserver" #HTC Mirrorlink
    "com.htc.dnatransfer" #HTC Filetransfer
    "com.htc.task.gtask" #Google Tasks
    "com.htc.sense.socialnetwork.facebook" #HTC Sense Facebook
    "com.htc.sense.socialnetwork.googleplus" #HTC Sense Google Plus
    "com.htc.theme.font.xingothic_en" #Font
    "com.htc.feedback" #Udove
    "com.htc.android.voicedictation" #HTC Voice Dictation
    "com.htc.sense.linkedin" #LinkedIn
    "com.futuredial" #Filetransfer
    "com.htc.guide" #HTC Guide
    "com.htc.sense.ime.langpack.tvalueadd" #IME
    "com.htc.sense.socialnetwork.instagram" #HTC Sense Instagram
    "com.htc.club" #HTC Club
    "com.htc.uibc" #uibc
    "com.htc.zero" #Zoe Video Editor
    "com.htc.cs.identity" #HTC Account
    "com.htc.sense.ime.langpack.mindic" #Indic vendor
    "com.infraware.docmaster" #POLARIS Office 5
    "com.google.android.gm.exchange" #Exchange Service
    "com.htc.AutoMotive" #Car
    "com.htc.drive.activator" #DriveActivator
    "com.nero.android.htc.sync" #HTC Sync Manager
    "com.zoodles.kidmode" #Kidmode
    "com.htc.locationservicessetting" #HTC Locationservice
    "com.htc.android.htcsetupwizard" #HTC Setupwizard
    "com.htc.HTCSpeaker" #HTC Speak
    "com.futuredial.idevicecloud" #iCloudTransfer
    "com.htc.AutoMotive.Traffic" #Traffic
    "com.nero.android.htc.sync.installer" #Sync Installer
    "com.htc.backupreset" #BackupReset
    "com.htc.dotmatrix" #DotMatrix
    "com.htc.sense.socialnetwork.twitter" #HTC Sense Twitter
    "android.htc.china.location.service" #China Location Service
    "com.htc.sense.ime.langpack.mvie" #viet vendor
    "com.htc.sense.ime.langpack.phwr" #Handwriting Pack
    "com.htc.theme.font.yuen" #Chinese Font
    "com.htc.autobot.cargps.provider" #Car GPS
)

function post_debloat() {
}

function post_revert() {
}
