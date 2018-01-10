#!/bin/sh
# a
copyResources (){
    echo "Copying resources"
    cp -iv gitconfig /etc/gitconfig
    echo "Done"
}


while true; do
    read -p "WARNING!!! This will overwrite system files in /etc directroy. You'll be asked to confirm each replacement. Do you wish to proceed?" yn
    case $yn in
        [Yy]* ) copyResources; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Exit"
exit
