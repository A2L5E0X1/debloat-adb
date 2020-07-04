# ADB Debloat-Scripts for Bash
Debloat your Android Phone without ROOT, by GG2501YT / A2L5E0X1

## Note:
If you are having Problems or your Android bootloops/crashes after using the Script, please report it and don't blame me. **YOU** are using my Deblotscripts. It's important to **read the README** to get all needed Informations. If your Phone stops working, you probably need to hardreset it. Please backup Apps you uninstall with ![APK Extractor](https://f-droid.org/en/packages/axp.tool.apkextractor/) and also backup your personal Data!

## How to use?
Install ADB and run the Debloat Script for your Device. Before you run a Script, edit the script and remove the lines of apps you want to keep (just put a # in front of the Line aka. "comment it out"

## Can I restore the uninstalled Apps?
Partly, you can restore some apps by installing the original apk (Use APK Extractor). On some devices like HUAWEI it doesn't work. If you can't restore the App you want, you need the hardreset the whole device! So please be careful.

## You forgot an App! How can I add it to your Script?
Nice that you are want to contribute my Project :)  
Create a Pull-Request to add missing apps to the script or even want to make a script for a Device that doesn't exist here yet. Please use the debloat-example.sh to write your own Debloat-Script.

## Can I execute this on Windows?
You can try it on Cygwin or a Linux Subsystem (Windows 10 only). It's not tested but if ADB works correctly then it works here too.

## Which devices are supported?
Any Android Device (min. API 20) with enabled USB-Debugging. But on some devices (for example Fire TV Stick on FireOS) it doesn't work (It will show INTERNAL_ERROR every time)

## I am getting Errors while running a Script.
This is normal. Not every device has this apps. It depends on your device and on your ROM.

## Which Apps does the Script install?
All Apps you can install with the appinstall script are opensource and available on F-Droid.
