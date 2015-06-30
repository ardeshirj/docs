#.bashrc

#Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#Uncomment the following line if you don't like systemctl's auto-paging feature:
#export SYSTEMD_PAGER=

#User specific aliases and functions

# main paths
export PATH=$PATH:/opt/android-sdk-linux/
export PATH=$PATH:/opt/texlive/2014/bin/x86_64-linux
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:$HOME/.rvm/bin

# nvm activation
source ~/.nvm/nvm.sh

# To preserve user environment like .vimrc
alias sudo='sudo -E PATH=$PATH'

# My documents for Fedora
alias doc='cd $HOME/Development/github/fedora-docs'

# Change terminal title to current directory name
PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}-Terminal\007"'
