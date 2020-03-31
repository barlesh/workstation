#! /bin/bash

function install_zoom() {
    cd /tpm
    
    wget -O package-signing-key.pub https://zoom.us/linux/download/pubkey
    sudo rpm --import package-signing-key.pub
    
    wget -O zoom_centos_rhel.rpm https://zoom.us/client/latest/zoom_x86_64.rpm
    sudo yum install zoom_centos_rhel.rpm
    cd -
}