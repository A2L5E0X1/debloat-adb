#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Functions
function run_script() {
bash scripts/${@}.sh
}

clear
echo "### ADB Debloat
### by A2L5E0X1 + Razuuu"
sleep 1

echo -e "\nSelect an option\n"

while true; do
		echo "(D)ebloat | (I)nstall Apps"
    read -p " » " select
    case $select in
        [Dd]* ) run_script debloat; break;;
        [Ii]* ) run_script install-apps; break;;
        [Ee]* ) echo "Exit script!"; exit 1;;
        * ) echo "No option selected!";;
    esac
done

exit 0
