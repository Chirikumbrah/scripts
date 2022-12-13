# Config files aliases
alias zshconf="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias xinitconf="nvim ~/.xinitrc"
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
alias edit="nvim"
alias v="nvim"
alias cpd="cp -r"
alias rmd="rm -fri"
alias rm="rm -i"
alias mv="mv -i"
alias q="exit"
alias image="feh"
alias img="feh"
alias trs="trash"
alias trr="trash-restore"
alias trl="trash-list"
alias trm="trash-empty"
alias l="exa -alb --icons --classify"
alias ll="llama_launch"
alias lt="exa -Talb --icons --classify"
alias t="exa -Talb --icons --classify"
alias cat="bat"
