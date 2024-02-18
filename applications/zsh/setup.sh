#!/bin/bash

# Copy the zshrc file to ~/.zshrc
cp -vf ./zshrc ~/.zshrc
cp -vf ./zshenv ~/.zshenv

current_shell=$(ps -p $$ -o comm=)
# If zsh is not active, enter into zsh
if [ "$current_shell" == "zsh" ]; then
	zsh
else
	source ~/.zshenv
	source ~/.zshrc
fi
