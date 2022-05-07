#!/bin/bash
#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Archos ALPS Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
    # Archos 50f Neon Parts (Android 7)
    "org.simalliance.openmobileapi.uicc1terminal" #OpenMobileAPI
    "org.simalliance.openmobileapi.uicc2terminal" #OpenMobileAPI
    "org.simalliance.openmobileapi.eseterminal" #OpenMobileAPI
    "org.simalliance.openmobileapi.service" #OpenMobileAPI
    "com.ragentek.copy" #FileCopy
    "com.archos.system" #ArchosSystemApp
    "com.archos.apkinstaller" #ThirdPartyInstaller
    "com.kayun.smartmotion" #SmartMotion
    "com.archos.launcherprovider" #ArchosLauncherCustomization
    "com.rgk.launcherplus" #PartnerLauncherCustomization
    "com.LogiaGroup.LogiaDeck" #AppRecommendations
    "com.ragentek.stresstest" #StressTest
    # Common MediaTek Apps
    "com.mediatek.ygps" #YGPS
    "com.mediatek.simprocessor" #SimProcessor
    "com.mediatek.mdmlsample" #MDMLSample
    "com.mediatek.batterywarning" #BatteryWarning
    "com.mediatek.bluetooth.dtt" #BTTool
    "com.mediatek.atci.service" #Atci_service
    "com.mediatek.thermalmanager" #MTKThermalManager
    "com.mediatek.lbs.em2.ui" #LocationEM2
    "com.mediatek.sensorhub.ui" #SensorHub
    "com.mediatek.dataprotection" #DataProtection
)

for app in ${bloatware[@]}; do
    $adb_location shell pm uninstall --user 0 $app
    $adb_location shell pm uninstall $app
done
