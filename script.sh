#!/bin/bash

#
# This Script is by A2L5E0X1
#

clear
echo "### Script Selector
### by A2L5E0X1"
sleep 1

echo -e "\nSelect a option"

while true; do
		echo "(D)evice Debload | (O)ther Debload | (I)nstall Apps"
    read -p " » " select
    case $select in
        [Dd]* ) bash scripts/device.sh; break;;
				[Oo]* ) bash scripts/other.sh; break;;
        [Ii]* ) bash scripts/install_apps.sh; break;;
        [Ee]* ) echo "Exit script!"; exit 1;;
        * ) echo "No option selected!";;
    esac
done

exit 0
