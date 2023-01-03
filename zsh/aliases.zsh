# Config files aliases
alias zshconf="$EDITOR ~/.zshrc"
alias xinitconf="$EDITOR ~/.xinitrc"
alias i3void-repo="cd ~/yrData/files/configs/i3void/"
alias cd-screenshots="cd ~/yrData/images/screenshots"
alias cd-mtp="jmtpfs ~/Devices/mtp && cd ~/Devices/mtp"
alias mount-mtp="jmtpfs ~/Devices/mtp && echo 'MTP device mounted to the ~/Devices/mtp'"
alias unmount-mtp="fusermount -u ~/Devices/mtp"
alias cd-usb="cd /run/media/yr/"

# My alias
alias halt="sudo halt"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown"
alias zzz="sudo zzz"
alias ZZZ="sudo ZZZ"
alias install="sudo xbps-install -Suv"
alias fully-uninstall="sudo xbps-remove -FR"
alias uninstall="sudo xbps-remove"
alias query="xbps-query -Rs"
alias update="sudo xbps-install -Suv"
alias packages="xbps-query -l"
alias clear-packages="sudo rm -fr /var/cache/xbps/*"
alias clear-screenshots="trash ~/yrData/images/screenshots/*"
alias repos="xbps-query -L"
alias getpath="fd -p --type=file --color=always | fzf --ansi | tr -d '\n' | xclip -selection c"
alias {i,img}="$IMAGE_VIEWER"
alias o="open"
alias e="edit"
alias v="$EDITOR"
alias cpd="cp -r"
alias rmd="rm -fri"
alias rm="rm -i"
alias mv="mv -i"
alias q="exit"
alias trr="trash-restore"
alias trl="trash-list"
alias trm="trash-empty"
alias l="exa -alb --icons --classify"
alias ls="exa -a --icons --classify"
alias lt="exa -Talb --icons --classify"
alias t="exa -Talb --icons --classify"
alias cat="bat"
alias tf="terraform"
alias du="ncdu"
alias df="duf"
alias apply_zsh_plugins="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d