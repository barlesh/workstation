#!/usr/bin/env bash

# permissions (must be non root!)

if [  $EUID -eq 0 ];
then
    echo -e "${RED}must be executed with no root permissions. exiting${NC}"
    exit 1
fi

sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update
sudo apt install code -y
