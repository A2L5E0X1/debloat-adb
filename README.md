# ADB Debloat-Scripts for Bash
Debloat your Android Device without ROOT, by @A2L5E0X1
Thanks to @Razuuu for improving this project.

## Note:
If you have problems or your device bootloops/crashes after using the script, please report it and don't blame me. **YOU** are using my debloat-scripts. It's important to **read the README** to get all needed informations. If your device stops working, you probably need to hardreset it. Please backup all apps you uninstall with [APK Extractor](https://f-droid.org/en/packages/axp.tool.apkextractor/) and your internal storage!

## How to use?
Download the repository using git cli or github web. Then install ADB and run `./debloat-adb.sh' and choose what you want to remove. Before using the script, edit it in type/xxx.sh and remove the apps you want to keep! (just put a # in front of the line or remove it.)

## Can I restore uninstalled Apps?
Kind of, you can restore some apps by installing the original apk or you install them with Google Play. On some devices, you can't restore some apps. If you can't restore the App you want, you need the hardreset the device! So please be careful.  
Note: On devices with Android 9 and newer you can use `adb shell pm install-existing package.name` to restore user uninstalled applications.

## You forgot an App! How can I add it to your script?
Thank you for telling! :)  
Create a Pull-Request to add missing apps or even make a script for a device/brand/UI that doesn't exist here yet. Please use the Example.sh to make your own debloat-script.

## Can I use this on Windows/MacOS?
For Windows, you can use Cygwin (confirmed to work). WSL won't work because it doesn't have USB support.  
On Darwin based Systems (e.g. MacOS) it works like on Linux. Thanks to @stefan-najdovski.

## Which devices are supported?
Any Android Device (min. API 20/Android 5.0) with ADB access/available USB-Debugging. But on some devices (for example Fire TV Stick on FireOS 5.x) it doesn't work (It will show INTERNAL_ERROR every time).

## I'm getting errors while running a script.
This is normal. Not all devices have the same apps. It depends on your device and your ROM/Android Version.

## What does install-apps.sh do?
This script got moved to debloat-adb.sh ("Install Apps" option).  
It installs some opensource alternatives. For reference check [APPS.md](https://github.com/A2L5E0X1/debloat-adb/blob/master/APPS.md). The script will fetch and install the apps on your device.  
I will try to keep the apps up-to-date there!  

## I like your Debloat-Scripts! How can I support you?
Well, I don't accept donations right now. But it would be nice if you share the repository with others and you fork or mark it.  
I will accept all kind of contributions. Thanks for all contributions and support in general!

