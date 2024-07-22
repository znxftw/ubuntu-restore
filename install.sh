#!/bin/bash

source ./helpers/util.sh

echo "[::DEBUG] Updating apt"
sudo apt update -qq

echo "[::DEBUG] Upgrading apt"
sudo apt upgrade -y -qq

echo "[::DEBUG] Installing packages"

# .deb packages
fetch_and_install bitwarden
fetch_and_install code
fetch_and_install discord
fetch_and_install git
fetch_and_install steam
fetch_and_install xclip
fetch_and_install zsh   

# oh-my-zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi


