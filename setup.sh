#!/bin/bash

read -p "Do you want to set up zsh? (y/n): " answer

if [[ $answer == "y" || $answer == "Y" ]]; then
    # Add code here to set up zsh
    ./applications/zsh/setup.sh
else
    echo "Skipping zsh setup."
fi


read -p "Do you want to set up git? (y/n): " answer

if [[ $answer == "y" || $answer == "Y" ]]; then
    # Add code here to set up git
    ./applications/git/setup.sh
else
    echo "Skipping git setup."
fi
