#!/bin/bash
echo "#####################"
echo "Google Debloat Script"
echo "by GG2501YT          "
echo "#####################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## Google Apps

# DANGER Zone
BLOAT_DANGER=(
    "com.google.android.gms"                     #Play Services
    "com.google.android.gsf"                     #Service Framework
    "com.google.android.gsf.login"               #Google Login Service
    "com.google.android.feedback"                #Market Feedback
    "com.google.android.tts"                     #Google TTS
    "com.google.android.apps.pixelmigrate"       #Google Restore
    "com.google.android.backupuses"              #Google Backuptransport
    "com.google.android.backuptransport"
    "com.google.android.syncadapters.contacts"   #Google Contacts Syncadapter
    "com.google.android.syncadapters.calendar"   #Google Calendar Syncadapter
    "com.google.android.gmsintegration"          #Play Services Integration
)
# DANGER Zone end

for APP_DANGER in "${BLOAT_DANGER[@]}"
do
    adb shell pm uninstall --user 0 "$APP_DANGER"
done

BLOAT=(
    "com.android.chrome"                                #Google Chrome
    "com.google.android.apps.photos"                    #Google Photos
    "com.google.android.gm"                             #Gmail
    "com.google.android.googlequicksearchbox"           #Google App
    "com.google.android.apps.maps"                      #Maps
    "com.google.android.music"                          #Play Music
    "com.google.android.videos"                         #Play Videos
    "com.google.android.youtube"                        #YouTube
    "com.android.vending"                               #Play Store
    "com.google.android.apps.docs"                      #Drive
    "com.google.android.apps.tachyon"                   #Duo
    "com.google.android.inputmethod.latin"              #Gboard
    "com.google.android.apps.docs.editors.docs"         #Google Docs
    "com.google.android.apps.docs.editors.sheets"       #Google Sheets
    "com.google.android.apps.docs.editors.slides"       #Google Slides
    "com.google.android.keep"                           #Notes
    "com.google.android.apps.googleassistant"           #Google Assistant
    "com.google.android.street"                         #StreetView
    "com.google.android.apps.cloudprint"                #Google CloudPrint
    "com.google.android.apps.magazines"                 #Magazines
    "com.google.android.apps.books"                     #Books
    "com.google.android.apps.plus"                      #Google+
    "com.google.android.play.games"                     #Play Games
    "com.google.android.talk"                           #Hangouts
    "com.google.android.apps.messaging"                 #Google Messaging
    "com.google.android.marvin.talkback"                #Google Talkback
    "com.google.android.apps.wellbeing"                 #Google Wellbeing
    "com.google.android.printservice.recommendation"    #Google Print Service
    "com.google.android.apps.calc"                      #Google Calculator
    "com.google.android.calendar"                       #Google Calendar
    "com.google.android.ar.lens"                        #Google Lens
    "com.google.android.apps.translate"                 #Google Translator
    "com.google.android.apps.fitness"                   #Google Fit
    "com.google.android.apps.wallpaper"                 #Google Wallpaper
    "com.google.android.apps.enterprise.dmagent"        #Google Apps Device Policy
    "com.google.android.apps.kids.familylink"           #Google Family Link
    "com.google.android.projection.gearhead"            #Android Car
    "com.google.android.ims"                            #Carrier Services
    "com.google.ar.core"                                #Google AR Core
    "com.google.android.apps.genie.geniewidget"         #NewsAndWeather
)

for APP in "${BLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
