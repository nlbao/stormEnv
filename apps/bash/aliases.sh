# get current OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     export MACHINE_OS=linux;;
    Darwin*)    export MACHINE_OS=macos;;
    CYGWIN*)    export MACHINE_OS=Cygwin;;
    MINGW*)     export MACHINE_OS=MinGw;;
    *)          export MACHINE_OS="UNKNOWN:${unameOut}"
esac

# some more ls aliases
export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad  # Default
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx  # black background
# export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd  # mimic the colors of a typical Linux terminal:
alias ll='ls -alFhGp'  # macOS
# alias ll='ls -lah --color=auto --time-style="+%a %Y-%m-%d %H:%M"'   # only for Linux, not for MacOS

# Add an "alert" alias for long running commands.  Use like so:

#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# my settings
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

get_git_branch() {
    echo $(parse_git_branch) | sed 's/(//g' | sed 's/)//g'
}

function gitbr {
    git branch -D $1
    git checkout -b $1
}

    # git log
GLF1='--oneline --graph --color --decorate --all'
GLF2="--graph --abbrev-commit --color --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
GLF3="--graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gl='git log -10 '$GLF2
alias glall='git log '$GLF2
alias gstt='git status'
alias gitf='git fetch'
alias gdiff='git diff'
alias grset='git reset'
alias gckout='git checkout'
alias gadd='git add'
alias gcom='git commit -m'
alias gcom_add='git commit --amend'
alias gpush='git push origin $(get_git_branch)'
alias gpush_add='git push origin -u +$(get_git_branch)'
alias gpull='git pull origin $(get_git_branch)'

    # cd
alias ..='cd ..'
alias .3='cd ../../../'

    # mem / cpu / gpu info
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias wget='wget -c'  # resume wget by default
alias hs='history | grep $1'  # history search (use: hs sometext)
alias svim='sudo vim'  # sudo vim
alias myip='hostname --ip-address'
alias myos='cat /etc/os-release; lsb_release -a; uname -r'

    # tmux
unlink ~/.tmux.conf
ln -s ~/env/apps/tmux/${MACHINE_OS}/conf.sh ~/.tmux.conf
alias retmux='tmux source-file ~/.tmux.conf'

function tmuxall {
    tmux attach -t all
}

function tmux_start {
    tmux new -s "$1" \; send-keys "os $1" 'C-m'
}
    
    # pyhon
alias python="python3"
alias pip="pip3"

    # dotnet
export PATH="$PATH:/Users/nlbao/.dotnet/tools"



