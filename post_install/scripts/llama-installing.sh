#!/bin/bash

LINK="https://github.com/antonmedv/llama/releases/download/v1.4.0/llama_linux_amd64"
BINARY="/tmp/llama"
TARGET="$HOME/.local/bin/"

wget "$LINK" -O "$BINARY"
chmod +x "$BINARY"
mkdir -p "$TARGET"
mv "$BINARY" "$TARGET"
