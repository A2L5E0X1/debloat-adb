# ADB Debloat-Scripts for Bash
Debloat your Android Device without ROOT, by A2L5E0X1

## Note:
If you have problems or your device bootloops/crashes after using the script, please report it and don't blame me. **YOU** are using my debloat-scripts. It's important to **read the README** to get all needed informations. If your device stops working, you probably need to hardreset it. Please backup all apps you uninstall with ![APK Extractor](https://f-droid.org/en/packages/axp.tool.apkextractor/) and your internal storage!

## How to use?
Download the repository using git cli or github web. Then install ADB and run the debloat-scripts you want. Before you use a script, edit the script and remove the apps you want to keep! (just put a # in front of the line or just remove it.)

## Can I restore uninstalled Apps?
Kind of, you can restore some apps by installing the original apk or you install them with Google Play. On some devices, you can't restore some apps. If you can't restore the App you want, you need the hardreset the device! So please be careful.

## You forgot an App! How can I add it to your Script?
Thank you for telling! :)
Create a Pull-Request to add missing apps or even make a script for a device/brand/UI that doesn't exist here yet. Please use the Example.sh to make your own debloat-script.

## Can I use this on Windows/MacOS?
For Windows, you can use Cygwin or a Linux Subsystem (WSL, Windows 10 only)
On MacOS it should work like on Linux, but no idea to be honest.. never had a mac. You can tell me :)

## Which devices are supported?
Any Android Device (min. API 20/Android 5.0) with ADB Access/available USB-Debugging. But on some devices (for example Fire TV Stick on FireOS) it doesn't work (It will show INTERNAL_ERROR every time).

## I am getting Errors while running a Script.
This is normal. Not all devices has all the same apps. It depends on your device and your ROM/Android Version.

## What does install-apps.sh do?
It installs some opensource alternatives which you can find in F-Droid and in the ![apps repository](https://github.com/A2L5E0X1/apps). The script will clone the apps repository and install the apps on your device.
I will try to keep the apps up-to-date there!

## I like your debloat-scripts! How can I support you?
Well, I dont accept donations right now. But it would be nice if you share the repository with others and you fork or mark it.
I will accept all kind of contributions. Thanks for all contributions and support in general!
