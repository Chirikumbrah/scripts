# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export BROWSER=chromium
export IMAGE_VIEWER=sxiv
export VIDEO_PLAYER=ffplay
export EDITOR=hx
export VISUAL="$EDITOR"
export CM_LAUNCHER=dmenu
export SCRIPTS="$HOME/.scripts"

# Custom PATH directories
export PATH="$HOME/.local/bin:$PATH"

[ -d "$HOME/.cache/zsh" ] || mkdir "$HOME/.cache/zsh"
export ZSH_CACHE_DIR="$HOME/.cache/zsh"

# Custom PATH directories
export PATH="$HOME/.local/bin:$PATH"


# Solving terminal issues with SSH
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

autoload -Uz compinit
compinit -i
autoload -U +X bashcompinit && bashcompinit

# Set options
setopt autocd
setopt extendedglob

source ~/.zsh_plugins.sh
source $SCRIPTS/zsh/aliases.zsh
source $SCRIPTS/zsh/functions.zsh

complete -o nospace -C /home/yr/go/bin/terraform terraform

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"