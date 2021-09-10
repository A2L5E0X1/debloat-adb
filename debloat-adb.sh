#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Functions
function run_script() {
bash scripts/${@}.sh
clear
}

clear
echo "### debloat-adb
### by A2L5E0X1"
sleep 1

echo -e "\nSelect a option\n"

while true; do
		echo "(D)evice Debloat | (O)ther Debloat | (I)nstall Apps"
    read -p " » " select
    case $select in
        [Dd]* ) run_script device; break;;
	[Oo]* ) run_script other; break;;
        [Ii]* ) run_script install-apps break;;
        [Ee]* ) echo "Exit script!"; exit 1;;
        * ) echo "No option selected!";;
    esac
done

exit 0
