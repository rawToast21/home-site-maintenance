#
# ~/.bashrc

feh --bg-scale /home/jem/wallpapers/wallpapers/0198.jpg &

function hg() {
  history | grep "$1";
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="/home/jem/.local/bin:$PATH"
eval $(keychain --eval --quiet id_ed25519 id_rsa ~/.ssh/LocalKey)

shopt -s histappend
PROMPT_COMMAND="history -n; history -a"
unset HISTFILESIZE
HISTSIZE=2000

# THIS MUST BE AT TEH END OF HTE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "#HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
