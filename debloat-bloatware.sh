#!/bin/bash
echo "########################"
echo "Bloatware Debloat Script"
echo "by GG2501YT             "
echo "########################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## Bloatware
BLOAT=(
    "com.dropbox.android"               #Dropbox
    "com.facebook.katana"               #Facebook
    "com.facebook.orca"                 #Messenger
    "com.hp.android.printservice"       #HP Printservice
    "com.microsoft.office.excel"        #MS Excel
    "com.microsoft.office.onenote"      #MS OneNote
    "com.microsoft.office.outlook"      #MS Outlook
    "com.microsoft.office.powerpoint"   #MS Powerpoint
    "com.microsoft.office.word"         #MS Word
    "com.microsoft.skydrive"            #OneDrive
    "com.mobilesrepublic.appy"          #NewsRepublic
    "com.skype.raider"                  #Skype
    "com.twitter.android"               #Twitter
)

for APP in "${BLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
