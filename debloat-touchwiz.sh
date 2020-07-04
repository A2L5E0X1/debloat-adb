#!/bin/bash
echo "#######################"
echo "TouchWiz Debloat Script"
echo "by GG2501YT            "
echo "#######################"
echo "Please read README.md before you continue!" 
echo "Please enable ADB and connect your Phone your Computer or use ADB over Network"
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## TouchWiz Apps
adb shell pm uninstall --user 0 com.sec.android.gallery3d.panorama360view
adb shell pm uninstall --user 0 com.samsung.aasaservice
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.fileshare
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare
adb shell pm uninstall --user 0 com.sec.allsharecastplayer
adb shell pm uninstall --user 0 com.samsung.android.app.sounddetector
adb shell pm uninstall --user 0 com.sec.android.automotive.drivelinkremote
adb shell pm uninstall --user 0 com.sec.android.automotive.drivelink
adb shell pm uninstall --user 0 com.samsung.android.bbc.bbcagent
adb shell pm uninstall --user 0 com.mobeam.barcodeService
adb shell pm uninstall --user 0 com.samsung.android.beaconmanager
adb shell pm uninstall --user 0 flipboard.boxer.app
adb shell pm uninstall --user 0 flipboard.app
adb shell pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms
adb shell pm uninstall --user 0 com.samsung.android.scloud.backup
adb shell pm uninstall --user 0 com.samsung.android.scloud
adb shell pm uninstall --user 0 com.sec.android.cloudagent
adb shell pm uninstall --user 0 com.samsung.android.sdk.spenv10
adb shell pm uninstall --user 0 com.sec.app.samsungprintservice
adb shell pm uninstall --user 0 com.sec.android.easyonehand
adb shell pm uninstall --user 0 com.sec.android.app.easylauncher
adb shell pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget
adb shell pm uninstall --user 0 com.sec.android.easysettings
adb shell pm uninstall --user 0 com.sec.esdk.elm
adb shell pm uninstall --user 0 com.sec.android.mimage.sstudio
adb shell pm uninstall --user 0 com.sec.android.mimage.photoretouching
adb shell pm uninstall --user 0 com.sec.android.widget.samsungapps
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall --user 0 com.samsung.android.nearby.mediaserver
adb shell pm uninstall --user 0 com.samsung.android.asksmanager
adb shell pm uninstall --user 0 com.samsung.groupcast
adb shell pm uninstall --user 0 com.sec.android.app.shealth
adb shell pm uninstall --user 0 com.sec.android.service.health
adb shell pm uninstall --user 0 com.hrs.b2c.android
adb shell pm uninstall --user 0 b2b.hrs.android.lib
adb shell pm uninstall --user 0 com.goldengekko.edsa.herold
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall --user 0 com.sec.kidsplat.installer
adb shell pm uninstall --user 0 com.sec.knox.foldercontainer
adb shell pm uninstall --user 0 com.samsung.knox.appsupdateagent
adb shell pm uninstall --user 0 com.sec.knox.knoxsetupwizardclient
adb shell pm uninstall --user 0 com.sec.knox.switcher
adb shell pm uninstall --user 0 com.samsung.knox.rcp.components
adb shell pm uninstall --user 0 com.samsung.klmsagent
adb shell pm uninstall --user 0 com.sec.enterprise.knox.attestation
adb shell pm uninstall --user 0 tv.peel.smartremote
adb shell pm uninstall --user 0 com.infraware.polarisviewer5
adb shell pm uninstall --user 0 com.samsung.android.sconnect
adb shell pm uninstall --user 0 com.samsung.android.personalpage.service
adb shell pm uninstall --user 0 com.samsung.android.service.travel
adb shell pm uninstall --user 0 com.vlingo.midas
adb shell pm uninstall --user 0 com.sec.android.app.billing
adb shell pm uninstall --user 0 com.sec.android.filter
adb shell pm uninstall --user 0 com.sec.android.app.SamsungContentsAgent
adb shell pm uninstall --user 0 com.sec.android.app.snsimagecache
adb shell pm uninstall --user 0 com.sec.android.app.sns3
adb shell pm uninstall --user 0 com.osp.app.signin
adb shell pm uninstall --user 0 com.sec.android.inputmethod
adb shell pm uninstall --user 0 com.samsung.android.securitylogagent
adb shell pm uninstall --user 0 com.arcsoft.magicshotstudio
adb shell pm uninstall --user 0 com.cleanmaster.sdk
adb shell pm uninstall --user 0 com.sec.android.app.storycam
adb shell pm uninstall --user 0 com.sec.android.app.tourviewer
adb shell pm uninstall --user 0 com.sec.android.widgetapp.ap.hero.accuweather
adb shell pm uninstall --user 0 com.samsung.android.app.withtv

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
