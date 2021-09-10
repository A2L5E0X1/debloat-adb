#!/bin/bash

script_path=$(dirname "$(readlink -f "$0")")

function get_locations() {
# This are the default locations in the OS, change it if you are using custom path
case "$OSTYPE" in
  linux*) adb_location="/usr/bin/adb"; git_location="/usr/bin/git" ;;
  darwin*) adb_location="/usr/local/bin/adb"; git_location="/usr/bin/git" ;;
esac
}
get_locations

function contribute_text() {
echo "If you want to contribute, you can create an Issue or a Pull-Request! :)
https://github.com/A2L5E0X1/debloat-adb"
}

function red_message() {
echo -e "\\033[31;1m${@}\\033[0m"
}

function warning_message() {
red_message "
IMPORTANT: Read README.md before you continue!
Make sure USB-Debugging is enabled on your phone and it's connected to your PC.
If your PC can't find the phone, make sure your PC is authorized.
Press ENTER to continue. Press CTRL+C to exit."
read
}
