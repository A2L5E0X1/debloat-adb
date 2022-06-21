# ADB Debloat-Scripts for Bash
Debloat your Android device without ROOT, by @A2L5E0X1
Thanks to @Razuuu for improving this project.

## Important Note
If you have any problems or your device bootloops/crashes after using the script (which should happen rarely/not at all since me and the contributors are testing the script before pushing to github), please report it and don't blame me. **YOU** were using my script! It's also important to **read the README** to get all needed informations. If your device stops working, you probably have to factory reset it. It's recommended to backup all apps you uninstall with [APK Extractor](https://f-droid.org/en/packages/axp.tool.apkextractor/) and your internal storage!  
We also have a Telegram Channel and Group now for updates, support, help and improvements. Click [here](https://t.me/a2l5_debloat_adb) to join.

## How to use?
Download the repository using git cli or github web. Then install ADB and run `./debloat-adb.sh` and pick a debloat script. Before using the script, edit it (located in type/xxx.sh) and remove the apps you want to keep! (just put a # in front of the line or remove it.)

## Can I restore uninstalled Apps?
Kind of, you can restore some apps by installing the original apk or you install them using Google Play. On some devices, you can't restore some apps. If you can't restore the App you want, you need the factory reset the device! So please be careful!  
Note: On devices with Android 9 and newer you can use `adb shell pm install-existing package.name` to restore user uninstalled applications.

## How can I contribute to your project?
That's very easy. Just create a Pull-Request with the changes you want to submit. Make sure you have tested your changes before submitting them! Your changes will be reviewed by me, just in case! If you want to add a new script, please use the Example.sh as template!

## Can I use this on Windows/MacOS?
For Windows, you can use Cygwin or Git Bash. WSL won't work because it doesn't have USB support.  
On Darwin based Systems (e.g. MacOS) it works like on Linux. Thanks to @stefan-najdovski.

## Which devices are supported?
Any Android Device (min. API 20/Android 5.0) with ADB access/available USB-Debugging. But on some devices (for example Fire TVs on FireOS 5.x) it doesn't work (It will always show INTERNAL_ERROR).

## I'm getting errors while running a script! 
Don't worry, they are normal since some apps might not be available on your device and it also tries to remove the updates of the app.

## What does install-apps.sh do?
This script got moved to debloat-adb.sh ("Install Apps" option).  
It installs some opensource apps. For reference check [APPS.md](https://github.com/A2L5E0X1/debloat-adb/blob/master/APPS.md). The script will fetch and install the apps on your device.  
I will try to keep the apps up-to-date there!  

## I like your Debloat-Scripts! How can I support you?
Well, I don't accept donations right now. But it would be nice if you share the repository with others and you star it.  
As already mentioned above, contributions are always welcome!  
Thanks for all contributions and support in general!

