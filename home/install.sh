#!/bin/sh
# 
copyResources (){
    echo "Copying resources"
    cp -Rv .bash ${HOME}/
    cp -v .bashrc ${HOME}/.bashrc
    cp -v .screenrc ${HOME}/.screenrc
    cp -v .vimrc ${HOME}/.vimrc
    cp -v .minttyrc ${HOME}/.minttyrc
    echo "Done"
}


while true; do
    read -p "WARNING!!! This will overwrite .bash/ and .bashrc in your HOME directory. Do you wish to proceed? (y/n): " yn
    case $yn in
        [Yy]* ) copyResources; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "Exit"
exit
