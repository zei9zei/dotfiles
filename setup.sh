#!/bin/bash

# Lista dei pacchetti da installare
packages=("neovim" "lazygit" "fd" "fzf" "ripgrep" "gcc")

# Aggiorna Homebrew e installa i pacchetti
brew update && for package in "${packages[@]}"; do brew install "$package"; done

# Crea la cartella .config/nvim
mkdir -p ~/.config/nvim

# Copia o crea un symlink della cartella nvim
if [ -d "./nvim" ]; then
  # Copia la cartella nvim
  cp -r ./nvim ~/.config/nvim
  # Oppure crea un symlink
  # ln -s "$(pwd)/nvim" ~/.config/nvim
else
  echo "La cartella 'nvim' non esiste allo stesso livello di setup.sh"
fi

# Messaggio di completamento
echo "Installazione completata!"
