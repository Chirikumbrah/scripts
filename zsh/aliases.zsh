# Config files aliases
alias zshconf="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
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
alias edit="$EDITOR"
alias v="$EDITOR"
alias cpd="cp -r"
alias rmd="rm -fri"
alias rm="rm -i"
alias mv="mv -i"
alias q="exit"
alias image="$IMAGE_VIEWER"
alias img="$IMAGE_VIEWER"
alias trs="trash"
alias trr="trash-restore"
alias trl="trash-list"
alias trm="trash-empty"
alias l="exa -alb --icons --classify"
alias ll="llama_launch"
alias lt="exa -Talb --icons --classify"
alias t="exa -Talb --icons --classify"
alias cat="bat"
alias tf="terraform"
alias du="ncdu"
alias df="duf"
alias apply_zsh_plugins="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"

# navigation
alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'
alias -g ......='cd ../../../../..'

alias 1='cd -'
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