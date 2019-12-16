# Run default profile for systems that use it like Solus Linux
if [ -f '/usr/share/defaults/etc/profile' ]; then
    source '/usr/share/defaults/etc/profile'
fi

# Editor
export EDITOR=vim

# If using window managers like i3
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

# GAM
gam() { "/home/emilan/bin/gam/gam" "$@" ; }

# GAM wrapper script
alias gwrapper="bash code/gam-wrapper-lib/gam-wrapper-lib.sh"

# Make screen shots directory
if [ ! -d ~/screen_shots ]; then mkdir ~/screen_shots; fi

# cheat.sh
alias cht='~/bin/cht.sh'

# Gcloud
export CLOUDSDK_PYTHON=$(which python2)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/emilan/Downloads/google-cloud-sdk-245.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc' ]; then . '/home/emilan/Downloads/google-cloud-sdk-245.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/emilan/Downloads/google-cloud-sdk-245.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc' ]; then . '/home/emilan/Downloads/google-cloud-sdk-245.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc'; fi