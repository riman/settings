#!/bin/sh
PATH="/usr/local/bin:/usr/bin:/bin"
function sourceIfFileExists() {
    fileName=$1
    if [ -f $fileName ] 
    then
        source $fileName
    fi
}

[[ "$-" != *i* ]] && return

BASH_DIR="${HOME}/.bash"
BASHRC_GLOBAL_FILE="/etc/bashrc"
BASH_LOCAL_FILE="${BASH_DIR}/.bash_local"
BASH_ALIASES="${BASH_DIR}/.bash_aliases"
BASH_FUNCTIONS="${BASH_DIR}/.bash_functions"
FZF=~/.fzf.bash

sourceIfFileExists $BASH_LOCAL_FILE 
sourceIfFileExists $BASH_ALIASES 
sourceIfFileExists $BASH_FUNCTIONS 
sourceIfFileExists $FZF 


if [ $(id -u) -eq 0 ];
then
    echo "Signed in as root"
    export PS1='\n\[\e[1;31m\]\u@\h \w\n\[\e[0m\]\$ '
else
    export PS1='\n\[\e[1;32m\]\u@\h \[\e[1;33m\]\w\n\[\e[0m\]\$ '
fi


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Bash history: unlimited, without duplicates
export HISTSIZE=
export HISTFILESIZE=
export HISTCONTROL=erasedups
export HISTTIMEFORMAT="[%F %T] "

# fixed default dir color to Light Blue instead of Blue
export LS_COLORS='no=00:fi=00:di=00;35:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:'

# Bash history: writing history with every keystroke
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

export PATH

