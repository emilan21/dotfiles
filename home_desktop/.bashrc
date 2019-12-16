# Run default profile for systems that use it like Solus Linux
if [ -f '/usr/share/defaults/etc/profile' ]; then
    source '/usr/share/defaults/etc/profile'
fi

# Editor
export EDITOR=vim

# If using window managers like i3, Solus doesn't like it
if [ -f '~/.Xresources' ]; then
    xrdb -merge ~/.Xresources
fi

# git alias
#alias cfg="/usr/bin/git --git-dir=/home/emilan/.cfg/ --work-tree=/home/emilan"
#alias master="cfg checkout master"
#alias work_desktop="cfg checkout work_desktop"

# Go
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin
export GOPATH="$PATH:$HOME/code/go-video"

# Rust
#source $HOME/.cargo/env

alias ssh="export TERM=xterm && ssh"

# Make screen shots directory
if [ ! -d ~/screen_shots ]; then mkdir ~/screen_shots; fi

# cheat.sh
alias cht='~/bin/cht.sh'
