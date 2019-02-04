#!/usr/bin/env bash

# permissions (must be non root!)

if [  $EUID -eq 0 ];
then
    echo -e "${RED}must be executed with no root permissions. exiting${NC}"
    exit 1
fi

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

yum check-update
sudo yum install code
