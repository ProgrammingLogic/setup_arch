#!/bin/bash

# FILEPATH: /home/jstiverson/Projects/setup_arch/applications/git/setup.sh

# Check if Git is installed
if command -v git &> /dev/null; then
    echo "Git is installed."
else
    echo "Git is not installed."
fi

read -p "Please enter your email: " email
if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
    echo "Email is valid, continuing..."
else
    echo "Email is invalid."
fi

read -p "Please enter your name: " name

read -p "Do you want to use vim as the default editor? (y/n): " use_vim
if [[ $use_vim == "y" ]]; then
    echo "Using vim as the default editor."
else
    read -p "Please enter the name of the editor you want to use: " editor
    echo "Using $editor as the default editor."
fi


git config --global user.email "$email"
git config --global user.name "$name"
git config --global core.editor "$editor"