#!/bin/bash
#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Realme Debloat Script
### by A2L5E0X1 + Razuuu
### Thanks to techyminati!"
sleep 1

bloatware=(
    "com.heytap.browser" # Realme browser
    "com.oppo.music" #Music (RUI-1)
    "com.heytap.music" #Music (RUI-2/3)
    "com.coloros.video" # realme Video
    "com.coloros.filemanager" #File Manager
    "com.heytap.usercenter" #My Realme
    "com.heytap.cloud" #Realme Cloud
    "com.coloros.gamespace" #App Enhancement Services
    "com.oppo.quicksearchbox" #realme Search
    "com.coloros.weather2" #Weather
    "com.realme.securitycheck" #Security Analysis
    "com.heytap.pictorial" #Lockscreen Magazine
    "com.coloros.oshare" #Realme Share
    "com.coloros.floatassistant" #Assistive Ball
    "com.coloros.securepay" #Payment Protection
    "com.coloros.smartdrive" #Smart Driving
    "com.coloros.sceneservice" #Smart Services
    "com.realme.movieshot" #Movie Shot
    "com.coloros.ocrscanner" #OCR Scanner
    "com.coloros.smartsidebar" #Smart Sidebar
    "com.heytap.market" #App Market
    "com.heytap.themestore" #Theme Store
    "com.heytap.habit.analysis" #Intelligent Analytics System
    "com.heytap.openid" #OpenID
    "com.coloros.healthservice" #Health Service
)

for app in ${bloatware[@]}; do
    $ADB shell pm uninstall --user 0 $app
    $ADB shell pm uninstall $app
done
