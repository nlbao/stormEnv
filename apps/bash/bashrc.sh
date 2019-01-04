# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# color ref: https://misc.flogisoft.com/bash/tip_colors_and_formatting
TIME='\[\033[01;31m\]\t';
USERNAME='\[\033[01;32m\]\u';
HOST='\[\033[02;34m\]\h';
LOCATION='\[\033[01;96m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`';
BRANCH='\[\033[00;33m\]$(parse_git_branch)';
PS1=$TIME' '$USERNAME' '$HOST' '$LOCATION''$BRANCH'\[\033[00m\] \$ ';

alias py='python3'

#### Citrix Receiver ####
alias citrix='LD_LIBRARY_PATH=/home/nlbao/libs/usr/lib64 /opt/Citrix/ICAClient/wfica -icaroot /opt/Citrix/ICAClient /home/nlbao/Downloads/citrix/mlp.ica'

#### tmux ####
alias tmuxall="tmux a -t all"
