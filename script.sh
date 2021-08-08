#!/bin/bash

#
# This Script is by A2L5E0X1
#

# Functions
function run_script() {
bash scripts/${@}.sh
clear
}

clear
echo "### Script Selector
### by A2L5E0X1"
sleep 1

echo -e "\nSelect a option\n"

while true; do
		echo "(D)evice Debload | (O)ther Debload | (I)nstall Apps"
    read -p " » " select
    case $select in
        [Dd]* ) run_script device; break;;
	[Oo]* ) run_script other; break;;
        [Ii]* ) run_script install_apps break;;
        [Ee]* ) echo "Exit script!"; exit 1;;
        * ) echo "No option selected!";;
    esac
done

exit 0
