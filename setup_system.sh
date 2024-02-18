#!/bin/bash
# This script is meant to be run on a fresh Arch Linux installation
# It will install the necessary packages and set up the system
# It is meant to be run as root


pacman -Sy --noconfirm archinstall
archinstall --config ./archinstall/user_configuration.json


