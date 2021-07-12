#!/bin/bash

#
# This Script is by A2L5E0X1
#

echo "### Google Debloat Script"
echo "### by A2L5E0X1          "
sleep 1

# Check for ADB
if [ "$(which adb)" != "/usr/local/bin/adb" ]; then
    echo "ERROR: ADB not found! Please install it or set correct PATH!" && exit 255
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
adb shell pm uninstall --user 0 com.google.android.modulemetadata #MainComponents
adb shell pm uninstall --user 0 com.google.android.setupwizard #Setup
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
adb shell pm uninstall --user 0 com.google.android.gms.location.history #LocationHistory
adb shell pm uninstall --user 0 com.google.ar.core #ARCore
adb shell pm uninstall --user 0 com.google.android.apps.turbo #DeviceHealthService
adb shell pm uninstall --user 0 com.google.android.as #DevicePersonalizationServices
adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle #OKGoogleHotword
adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle #XGoogleHotword
adb shell pm uninstall --user 0 com.google.android.apps.youtube.music #YTMusic

# Disconnect ADB
adb kill-server

# Success
echo "Debloat success"
echo "If you want to contribute, you can create an Issue or a Pull-Request :)"
echo "https://github.com/A2L5E0X1/debloat-adb"
