#!/bin/sh
# 
copyResources (){
    echo "Copying resources"
    cp -Rv .bash ${HOME}/
    cp -v .bashrc ${HOME}/.bashrc
    cp -v .zshrc ${HOME}/.zshrc
    cp -v .screenrc ${HOME}/.screenrc
    cp -v .vimrc ${HOME}/.vimrc
    cp -v .minttyrc ${HOME}/.minttyrc
    cp -v .tmux.conf ${HOME}/.tmux.conf
    cp -v .profile ${HOME}/.profile

    cp -Rv .vim ${HOME}/
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
