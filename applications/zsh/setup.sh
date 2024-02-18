#!/bin/bash


plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump)
theme="amuse"

# Copy the zshrc file to ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Set theme
sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"$theme\"/" ~/.zshrc


# Set plugins
sed -i "s/plugins=(git)/plugins=(${plugins[*]})/" ~/.zshrc


# Append custom .zshrc options to the end of the file