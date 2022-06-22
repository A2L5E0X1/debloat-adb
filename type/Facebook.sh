#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../scripts/variables_and_functions.sh

echo "### Facebook Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

bloatware=(
    "com.facebook.oxygen.installer" #Facebook Installer
    "com.facebook.oxygen.services" #Facebook Services
    "com.facebook.oxygen.appmanager" #Facebook Appmanager
    "com.facebook.oxygen.system" #Facebook System
    "com.facebook.system" #Facebook System
    "com.facebook.appmanager" #Facebook Appmanager
    "com.facebook.services" #Facebook Services
    "com.facebook.installer" #Facebook Installer
)

function post_debloat() {
}

function post_revert() {
}
