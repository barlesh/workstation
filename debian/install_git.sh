#!/usr/bin/env bash

if [  $EUID -eq 0 ];
then
    echo -e "${RED}must be executed with no root permissions. exiting${NC}"
    exit 1
fi

echo "installing git"
sudo apt-get install git -y

echo "creating and installing ssh-key"
ssh-keygen -t rsa -b 4096 -C "barlesh8@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
