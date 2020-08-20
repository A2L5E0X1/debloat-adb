#!/bin/bash
echo "#######################"
echo "TouchWiz Debloat Script"
echo "by GG2501YT            "
echo "#######################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## TouchWiz Apps
BLOAT=(
    "b2b.hrs.android.lib"
    "com.arcsoft.magicshotstudio"
    "com.cleanmaster.sdk"
    "com.goldengekko.edsa.herold"
    "com.hrs.b2c.android"
    "com.infraware.polarisviewer5"
    "com.mobeam.barcodeService"
    "com.osp.app.signin"
    "com.samsung.aasaservice"
    "com.samsung.android.allshare.service.fileshare"
    "com.samsung.android.allshare.service.mediashare"
    "com.samsung.android.app.sounddetector"
    "com.samsung.android.app.withtv"
    "com.samsung.android.asksmanager"
    "com.samsung.android.bbc.bbcagent"
    "com.samsung.android.beaconmanager"
    "com.samsung.android.nearby.mediaserver"
    "com.samsung.android.personalpage.service"
    "com.samsung.android.scloud"
    "com.samsung.android.scloud.backup"
    "com.samsung.android.sconnect"
    "com.samsung.android.sdk.spenv10"
    "com.samsung.android.securitylogagent"
    "com.samsung.android.service.travel"
    "com.samsung.groupcast"
    "com.samsung.klmsagent"
    "com.samsung.knox.appsupdateagent"
    "com.samsung.knox.rcp.components"
    "com.sec.allsharecastplayer"
    "com.sec.android.app.SamsungContentsAgent"
    "com.sec.android.app.billing"
    "com.sec.android.app.easylauncher"
    "com.sec.android.app.samsungapps"
    "com.sec.android.app.sbrowser"
    "com.sec.android.app.shealth"
    "com.sec.android.app.sns3"
    "com.sec.android.app.snsimagecache"
    "com.sec.android.app.storycam"
    "com.sec.android.app.tourviewer"
    "com.sec.android.automotive.drivelink"
    "com.sec.android.automotive.drivelinkremote"
    "com.sec.android.cloudagent"
    "com.sec.android.easyonehand"
    "com.sec.android.easysettings"
    "com.sec.android.filter"
    "com.sec.android.gallery3d.panorama360view"
    "com.sec.android.inputmethod"
    "com.sec.android.mimage.photoretouching"
    "com.sec.android.mimage.sstudio"
    "com.sec.android.service.health"
    "com.sec.android.widget.samsungapps"
    "com.sec.android.widgetapp.ap.hero.accuweather"
    "com.sec.android.widgetapp.easymodecontactswidget"
    "com.sec.app.samsungprintservice"
    "com.sec.enterprise.knox.attestation"
    "com.sec.enterprise.knox.cloudmdm.smdms"
    "com.sec.esdk.elm"
    "com.sec.kidsplat.installer"
    "com.sec.knox.foldercontainer"
    "com.sec.knox.knoxsetupwizardclient"
    "com.sec.knox.switcher"
    "com.vlingo.midas"
    "flipboard.app"
    "flipboard.boxer.app"
    "tv.peel.smartremote"
)

for APP in "${BLOAT[@]}"
do
    adb shell pm uninstall --user 0 "$APP"
done

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
