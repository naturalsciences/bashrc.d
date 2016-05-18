#!/bin/bash
#
#this file is responsible for setting the bash shell prompt for a user. it builds the prompt from values
# fed to the bashrc module
#Enable Colors
reset=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
purple=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
colone=$green
coltwo=$white
gitcol=$yellow
export GIT_PS1_SHOWDIRTYSTATE=true
if [ $UID -eq 0 ]; then
  export PS1="[\[$colone\]\u\[$white\]@\[$coltwo\]\h \W\[$gitcol\]\$(__git_ps1)\[$reset\]]# "
else
  export PS1="[\[$colone\]\u\[$white\]@\[$coltwo\]\h \W\[$gitcol\]\$(__git_ps1)\[$reset\]]\$ "
fi
