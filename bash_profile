# This is for Felix

export CLICOLOR=1

export PS1="\[$(tput bold)$(tput setaf 1)\]\u@\h:\w \n> \[$(tput sgr0)\]"

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mkdir='mkdir -pv'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias cc="clear"
alias la="ls -a"
alias ll="ls -al"
alias sl="ls"
