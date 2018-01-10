#!/bin/sh
PATH="/usr/local/bin:/usr/bin:/bin"

[[ "$-" != *i* ]] && return

BASH_DIR="${HOME}/.bash"
BASHRC_GLOBAL_FILE="/etc/bashrc"
BASH_LOCAL_FILE="${BASH_DIR}/.bash_local"
BASH_ALIASES="${BASH_DIR}/.bash_aliases"


if [ -f $BASH_LOCAL_FILE ] 
then 
    source $BASH_LOCAL_FILE
fi

source $BASH_ALIASES

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

# Bash history: writing history with every keystroke
PROMPT_COMMAND="history -a;$P

export PATH

