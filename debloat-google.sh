#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Google Debloat Script"
echo "### by A2L5E0X1          "
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

echo "LAST WARNING: THIS SCRIPT WILL REMOVE GOOGLE SERVICES AND PARTS AT DEFAULT!"
echo "TO AVOID THIS, EDIT THE SCRIPT!"
echo ""
echo "[!] If you are actually going to uninstall Google Services, you have to disable all device administrator entries by Google else it will fail uninstalling them!"
echo ""
echo "Press ENTER to continue. Press CTRL+C to exit."
read

# Waiting for Device
"$ADB" wait-for-device
echo "Device found!"
"$ADB" devices
echo "Debloat will start soon..."
sleep 3

# Google Apps
# DANGER Zone
"$ADB" shell pm uninstall --user 0 com.google.android.gms #Play Services
"$ADB" shell pm uninstall --user 0 com.google.android.gsf #Service Framework
"$ADB" shell pm uninstall --user 0 com.google.android.gsf.login #Google Login Service
"$ADB" shell pm uninstall --user 0 com.google.android.feedback #Market Feedback
"$ADB" shell pm uninstall --user 0 com.google.android.tts #Google TTS
"$ADB" shell pm uninstall --user 0 com.google.android.apps.pixelmigrate #Google Restore
"$ADB" shell pm uninstall --user 0 com.google.android.backupuses #Google Backuptransport
"$ADB" shell pm uninstall --user 0 com.google.android.backuptransport
"$ADB" shell pm uninstall --user 0 com.google.android.syncadapters.contacts #Google Contacts Syncadapter
"$ADB" shell pm uninstall --user 0 com.google.android.syncadapters.calendar #Google Calendar Syncadapter
"$ADB" shell pm uninstall --user 0 com.google.android.gmsintegration #Play Services Integration
"$ADB" shell pm uninstall --user 0 com.google.android.modulemetadata #MainComponents
"$ADB" shell pm uninstall --user 0 com.google.android.setupwizard #Setup
# DANGER Zone end

"$ADB" shell pm uninstall --user 0 com.android.chrome #Google Chrome
"$ADB" shell pm uninstall --user 0 com.google.android.apps.photos #Google Photos
"$ADB" shell pm uninstall --user 0 com.google.android.gm #Gmail
"$ADB" shell pm uninstall --user 0 com.google.android.googlequicksearchbox #Google App
"$ADB" shell pm uninstall --user 0 com.google.android.apps.maps #Maps
"$ADB" shell pm uninstall --user 0 com.google.android.music #Play Music
"$ADB" shell pm uninstall --user 0 com.google.android.videos #Play Videos
"$ADB" shell pm uninstall --user 0 com.google.android.youtube #YouTube
"$ADB" shell pm uninstall --user 0 com.android.vending #Play Store
"$ADB" shell pm uninstall --user 0 com.google.android.apps.docs #Drive
"$ADB" shell pm uninstall --user 0 com.google.android.apps.tachyon #Duo
"$ADB" shell pm uninstall --user 0 com.google.android.apps.docs.editors.docs #Google Docs
"$ADB" shell pm uninstall --user 0 com.google.android.apps.docs.editors.sheets #Google Sheets
"$ADB" shell pm uninstall --user 0 com.google.android.apps.docs.editors.slides #Google Slides
"$ADB" shell pm uninstall --user 0 com.google.android.keep #Notes
"$ADB" shell pm uninstall --user 0 com.google.android.apps.googleassistant #Google Assistant
"$ADB" shell pm uninstall --user 0 com.google.android.street #StreetView
"$ADB" shell pm uninstall --user 0 com.google.android.apps.cloudprint #Google CloudPrint
"$ADB" shell pm uninstall --user 0 com.google.android.apps.magazines #Magazines
"$ADB" shell pm uninstall --user 0 com.google.android.apps.books #Books
"$ADB" shell pm uninstall --user 0 com.google.android.apps.plus #Google+
"$ADB" shell pm uninstall --user 0 com.google.android.play.games #Play Games
"$ADB" shell pm uninstall --user 0 com.google.android.talk #Hangouts
"$ADB" shell pm uninstall --user 0 com.google.android.apps.messaging #Google Messaging
"$ADB" shell pm uninstall --user 0 com.google.android.marvin.talkback #Google Talkback
"$ADB" shell pm uninstall --user 0 com.google.android.apps.wellbeing #Google Wellbeing
"$ADB" shell pm uninstall --user 0 com.google.android.printservice.recommendation #Google Print Service
"$ADB" shell pm uninstall --user 0 com.google.android.apps.calc #Google Calculator
"$ADB" shell pm uninstall --user 0 com.google.android.calendar #Google Calendar
"$ADB" shell pm uninstall --user 0 com.google.android.ar.lens #Google Lens
"$ADB" shell pm uninstall --user 0 com.google.android.apps.translate #Google Translator
"$ADB" shell pm uninstall --user 0 com.google.android.apps.fitness #Google Fit
"$ADB" shell pm uninstall --user 0 com.google.android.apps.wallpaper #Google Wallpaper
"$ADB" shell pm uninstall --user 0 com.google.android.apps.enterprise.dmagent #Google Apps Device Policy
"$ADB" shell pm uninstall --user 0 com.google.android.apps.kids.familylink #Google Family Link
"$ADB" shell pm uninstall --user 0 com.google.android.projection.gearhead #Android Car
"$ADB" shell pm uninstall --user 0 com.google.android.ims #Carrier Services
"$ADB" shell pm uninstall --user 0 com.google.ar.core #Google AR Core
"$ADB" shell pm uninstall --user 0 com.google.android.apps.genie.geniewidget #NewsAndWeather
"$ADB" shell pm uninstall --user 0 com.google.android.gms.location.history #LocationHistory
"$ADB" shell pm uninstall --user 0 com.google.ar.core #ARCore
"$ADB" shell pm uninstall --user 0 com.google.android.apps.turbo #DeviceHealthService
"$ADB" shell pm uninstall --user 0 com.google.android.as #DevicePersonalizationServices
"$ADB" shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle #OKGoogleHotword
"$ADB" shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle #XGoogleHotword
"$ADB" shell pm uninstall --user 0 com.google.android.apps.youtube.music #YTMusic

# Disconnect ADB
"$ADB" kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
