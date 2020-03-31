#! /bin/bash

function install_vscode() {
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

    REPO=/etc/yum.repos.d/vscode.repo
    touch $REPO
    cat << EO_REPO > $REPO
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EO_REPO

    # sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    yum check-update
    sudo yum install code -y
}
