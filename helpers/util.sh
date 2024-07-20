#!/bin/bash

source ./helpers/packages.sh

function fetch_package()
{
    if [ -z $(find ./packages/$1.deb 2>/dev/null) ]; then
        echo "[::DEBUG] Downloading $1 from $2"
        wget -q -O "./packages/$1.deb" "$2"
    else 
        echo "[::DEBUG] Package $1 already downloaded"
    fi
}

function install_package(){
    if [ -z $(find ./packages/$1.deb 2>/dev/null) ]; then
        echo "[::DEBUG] Installing $1 from apt repository"
        sudo apt install -qq $1
    else
        echo "[::DEBUG] Installing $1 from local deb file"
        sudo apt install -qq ./packages/$1.deb
    fi
}

function fetch_and_install(){
    if [[ -n ${packages[$1]} ]]; then
        fetch_package $1 ${packages[$1]}
    fi
    install_package $1
}
