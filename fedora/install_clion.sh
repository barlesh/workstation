#! /bin/bash

function install_clion() {
    cd /tmp
    wget https://www.jetbrains.com/clion/download/download-thanks.html?platform=linux
    sudo tar xvzf CLion-*.tar.gz -C /opt/
    
    cd -
}