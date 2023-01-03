# launch llama util
function ll () {
  cd "$(llama "$@")"
}

function fcd () {
  if [ "$1" != '' ]; then
    if [ "$1" = "$HOME" ] || [ "$1" = "/" ]; then
      cd "$(fd . "$1" --hidden --type=directory --color=always | fzf --ansi)"
    else
      cd "$1"
    fi
  else
    cd "$(fd --hidden --type=directory --color=always | fzf --ansi)"
  fi
}

function edit () {
  if [ "$1" != '' ]; then
    if [ "$1" = "$HOME" ] || [ "$1" = "/" ]; then
      FILE="$(fd . "$1" --hidden --type=file --color=always | fzf --ansi)"
      if [ "$FILE" != '' ]; then
        $EDITOR "$FILE"
      fi
    else
      $EDITOR "$1"
    fi
  else
    FILE="$(fd --hidden --type=file --color=always | fzf --ansi)"
    if [ "$FILE" != '' ]; then
      $EDITOR "$FILE"
    else
      echo "No file selected."
    fi
  fi
}

function open () {
  if [ "$1" != '' ]; then
    if [ "$1" = "$HOME" ] || [ "$1" = "/" ]; then
      FILE="$(fd . "$1" --hidden --type=file --color=always | fzf --ansi)"
      if [ "$FILE" != '' ]; then
        xdg-open "$FILE" &
      fi
    else
      xdg-open "$1" &
    fi
  else
    FILE="$(fd --hidden --type=file --color=always | fzf --ansi)"
    if [ "$FILE" != '' ]; then
      xdg-open "$FILE" &
    else
      echo "No file selected."
    fi
  fi
}

function trs () {
  if [ "$1" != '' ]; then
    if [ "$1" = "$HOME" ] || [ "$1" = "/" ]; then
      fd . "$1" --hidden --type=file --color=always | fzf --ansi -m | xargs -I {} trash {}
    else
      trash "$1"
    fi
  else
    fd --hidden --type=file --color=always | fzf --ansi -m | xargs -I {} trash {}
  fi
}

