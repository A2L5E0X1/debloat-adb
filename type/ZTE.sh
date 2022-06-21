#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### ZTE AOSP Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
    # ZTE AOSP (Blade A7 2019 Android 9)
    "com.zte.privacyzone" #Privacy Zone
    "com.zte.handservice" #ZTE Cares
    "com.zte.heartyservice.strategy" #Speedup Service
    "com.zte.privacypolicy" #Privacy
    "zte.com.cn.filer" #Filemanager
    "cn.zte.recorder" #Recorder
    "com.ume.browser.cust" #UmeBrowser
    "com.zte.videoplayer" #Video
    "com.hermes.superb.oem" #Superb Cleaner
    "com.icoolme.bestweather" #BestWeather
    "com.android.mipop" #Z-POP
)

for app in ${bloatware[@]}; do
    $ADB shell pm uninstall --user 0 $app
    $ADB shell pm uninstall $app
done
