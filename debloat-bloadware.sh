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

## Bloadware
adb shell pm uninstall --user 0 com.hp.android.printservice #HP Printservice
adb shell pm uninstall --user 0 com.mobilesrepublic.appy #NewsRepublic
adb shell pm uninstall --user 0 com.facebook.katana #Facebook
adb shell pm uninstall --user 0 com.facebook.orca #Messanger
adb shell pm uninstall --user 0 com.twitter.android #Twitter
adb shell pm uninstall --user 0 com.microsoft.office.word #MS Word
adb shell pm uninstall --user 0 com.microsoft.office.onenote #MS OneNote
adb shell pm uninstall --user 0 com.microsoft.office.excel #MS Excel
adb shell pm uninstall --user 0 com.dropbox.android #Dropbox
adb shell pm uninstall --user 0 com.microsoft.skydrive #OneDrive
adb shell pm uninstall --user 0 com.microsoft.office.powerpoint #MS Powerpoint
adb shell pm uninstall --user 0 com.microsoft.office.outlook #MS Outlook
adb shell pm uninstall --user 0 com.skype.raider #Skype

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
