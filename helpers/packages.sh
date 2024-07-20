#!/bin/bash

mkdir -p packages  

declare -A packages

packages["code"]="https://update.code.visualstudio.com/latest/linux-deb-x64/stable"
packages["steam"]="https://repo.steampowered.com/steam/archive/stable/steam_latest.deb"
packages["discord"]="https://discord.com/api/download?platform=linux"
packages["bitwarden"]="https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb"