#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Intro
echo "#####################"
echo "Google Debloat Script"
echo "by A2L5E0X1          "
echo "#####################"
sleep 1

# Check if ADB is installed
if [ "$(which adb)" != "/usr/bin/adb" ]; then
    echo "ADB not found! Please install it!" && exit 255
fi

# Waiting for Device
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

# Google Apps
# DANGER Zone
adb shell pm uninstall --user 0 com.google.android.gms #Play Services
adb shell pm uninstall --user 0 com.google.android.gsf #Service Framework
adb shell pm uninstall --user 0 com.google.android.gsf.login #Google Login Service
adb shell pm uninstall --user 0 com.google.android.feedback #Market Feedback
adb shell pm uninstall --user 0 com.google.android.tts #Google TTS
adb shell pm uninstall --user 0 com.google.android.apps.pixelmigrate #Google Restore
adb shell pm uninstall --user 0 com.google.android.backupuses #Google Backuptransport
adb shell pm uninstall --user 0 com.google.android.backuptransport
adb shell pm uninstall --user 0 com.google.android.syncadapters.contacts #Google Contacts Syncadapter
adb shell pm uninstall --user 0 com.google.android.syncadapters.calendar #Google Calendar Syncadapter
adb shell pm uninstall --user 0 com.google.android.gmsintegration #Play Services Integration
# DANGER Zone end

adb shell pm uninstall --user 0 com.android.chrome #Google Chrome
adb shell pm uninstall --user 0 com.google.android.apps.photos #Google Photos
adb shell pm uninstall --user 0 com.google.android.gm #Gmail
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox #Google App
adb shell pm uninstall --user 0 com.google.android.apps.maps #Maps
adb shell pm uninstall --user 0 com.google.android.music #Play Music
adb shell pm uninstall --user 0 com.google.android.videos #Play Videos
adb shell pm uninstall --user 0 com.google.android.youtube #YouTube
adb shell pm uninstall --user 0 com.android.vending #Play Store
adb shell pm uninstall --user 0 com.google.android.apps.docs #Drive
adb shell pm uninstall --user 0 com.google.android.apps.tachyon #Duo
adb shell pm uninstall --user 0 com.google.android.inputmethod.latin #Gboard
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.docs #Google Docs
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.sheets #Google Sheets
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.slides #Google Slides
adb shell pm uninstall --user 0 com.google.android.keep #Notes
adb shell pm uninstall --user 0 com.google.android.apps.googleassistant #Google Assistant
adb shell pm uninstall --user 0 com.google.android.street #StreetView
adb shell pm uninstall --user 0 com.google.android.apps.cloudprint #Google CloudPrint
adb shell pm uninstall --user 0 com.google.android.apps.magazines #Magazines
adb shell pm uninstall --user 0 com.google.android.apps.books #Books
adb shell pm uninstall --user 0 com.google.android.apps.plus #Google+
adb shell pm uninstall --user 0 com.google.android.play.games #Play Games
adb shell pm uninstall --user 0 com.google.android.talk #Hangouts
adb shell pm uninstall --user 0 com.google.android.apps.messaging #Google Messaging
adb shell pm uninstall --user 0 com.google.android.marvin.talkback #Google Talkback
adb shell pm uninstall --user 0 com.google.android.apps.wellbeing #Google Wellbeing
adb shell pm uninstall --user 0 com.google.android.printservice.recommendation #Google Print Service
adb shell pm uninstall --user 0 com.google.android.apps.calc #Google Calculator
adb shell pm uninstall --user 0 com.google.android.calendar #Google Calendar
adb shell pm uninstall --user 0 com.google.android.ar.lens #Google Lens
adb shell pm uninstall --user 0 com.google.android.apps.translate #Google Translator
adb shell pm uninstall --user 0 com.google.android.apps.fitness #Google Fit
adb shell pm uninstall --user 0 com.google.android.apps.wallpaper #Google Wallpaper
adb shell pm uninstall --user 0 com.google.android.apps.enterprise.dmagent #Google Apps Device Policy
adb shell pm uninstall --user 0 com.google.android.apps.kids.familylink #Google Family Link
adb shell pm uninstall --user 0 com.google.android.projection.gearhead #Android Car
adb shell pm uninstall --user 0 com.google.android.ims #Carrier Services
adb shell pm uninstall --user 0 com.google.ar.core #Google AR Core
adb shell pm uninstall --user 0 com.google.android.apps.genie.geniewidget #NewsAndWeather

# Disconnect ADB
adb kill-server

# Success
echo "Success"
