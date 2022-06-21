#!/bin/bash
#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### BQ Debloat Script
### by A2L5E0X1 + Razuuu
### Thanks to R0rt1z2!"
sleep 1

bloatware=(
    "com.estrongs.android.pop" # ES File Explorer
    "com.bqreaders.ota" # Dead BQ OTAs App
    "com.bqreaders.reader.nubicoapp" # Nubico
    "com.bq.bqbookmark" # BQ Bookmarks
    "com.bq.wizardbq.insurance" # BQ Protection Plus
    "com.quickoffice.android" # Quick Office
    "com.hp.android.printservice" # HP Print Service
)

for app in ${bloatware[@]}; do
    $ADB shell pm uninstall --user 0 $app
    $ADB shell pm uninstall $app
done
