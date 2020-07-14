#!/bin/bash
echo "######################"
echo "Example Debloat Script"
echo "by GG2501YT           "
echo "######################"
echo "Please read README.md before you continue!"
echo "Please enable ADB and connect your Phone with your Computer."
adb wait-for-device
echo "Device found!"
adb devices
echo "Debloat will start soon..."
sleep 3

## Example Apps
adb shell pm uninstall --user 0 example.package.name

## Stop ADB Connection
adb kill-server

echo "Done"
echo "Thanks for using my Debloat Scripts!"
