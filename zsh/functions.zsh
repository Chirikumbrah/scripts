# launch llama util
function llama_launch () {
  cd "$(llama "$@")"
}

function fcd () {
  if [ "$1" != '' ]; then
    cd "$(fd . "$1" --hidden --type=directory | fzf)"
  else
    cd "$(fd --hidden --type=directory | fzf)"
  fi
}

function edit () {
  if [ "$1" != '' ]; then
    FILE="$(fd . "$1" --hidden --type=file | fzf)"
    if [ "$FILE" != '' ]; then
      $EDITOR "$FILE"
    else
      echo "No file selected."
    fi
  else
    FILE="$(fd --hidden --type=file | fzf)"
    if [ "$FILE" != '' ]; then
      $EDITOR "$FILE"
    else
      echo "No file selected."
    fi
  fi
}

function open () {
  if [ "$1" != '' ]; then
    FILE="$(fd . "$1" --hidden --type=file | fzf)"
    if [ "$FILE" != '' ]; then
      xdg-open "$FILE"
    else
      echo "No file selected."
    fi
  else
    FILE="$(fd --hidden --type=file | fzf)"
    if [ "$FILE" != '' ]; then
      xdg-open "$FILE"
    else
      echo "No file selected."
    fi
  fi
}

