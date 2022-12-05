#!/bin/bash

FILE="$HOME/llama"
TARGET="/usr/local/bin/"

wget https://github.com/antonmedv/llama/releases/download/v1.2.0/llama_linux_amd64 \
     -O "$FILE"
chmod +x "$FILE"
sudo mkdir -p "$TARGET"
sudo mv "$FILE" "$TARGET"
