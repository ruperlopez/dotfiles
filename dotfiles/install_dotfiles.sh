#!/bin/bash

# Define the source directory where your dotfiles are located
DOTFILES_DIR="$HOME/dotfiles"

# List all the dotfiles you want to symlink
dotfiles=(
  .zshrc
  .zsh_history
  # Add more dotfiles here
)

# Iterate over the dotfiles and create symlinks
for file in "${dotfiles[@]}"; do
  source_file="$DOTFILES_DIR/$file"
  target_file="$HOME/$file"

  if [ -e "$target_file" ]; then
    echo "Skipping $file - file already exists"
  else
    ln -s "$source_file" "$target_file"
    echo "Created symlink for $file"
  fi
done 

# Luego correr `chmod +x install_dotfiles` asi es ejecutable
# Para instalar correr el script ./install_dotfiles.sh
