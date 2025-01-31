#!/bin/bash

# Lista dei pacchetti da installare
packages=("neovim" "lazygit" "fd" "fzf" "ripgrep" "gcc")

# Aggiorna Homebrew e installa i pacchetti
brew update && for package in "${packages[@]}"; do brew install "$package"; done

# Crea la cartella .config/nvim
mkdir -p ~/.config/nvim

# Crea un symlink
ln -s "$(pwd)/nvim" ~/.config/nvim

# Messaggio di completamento
echo "Installazione completata!"
