#! /bin/bash

function install_vscode() {
    cd /tmp
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

    REPO=vscode.repo
    touch $REPO
    chown root:root $REPO
    REPO_PATH=/etc/yum.repos.d/$REPO
    sudo cat << EO_REPO > $REPO
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EO_REPO

    sudo mv $REPO $REPO_PATH
    # sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    yum check-update
    sudo yum install code -y

    cd -
}