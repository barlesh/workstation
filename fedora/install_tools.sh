#! /bin/bash

function install_tools() {
    sudo yum install epel-release -y
    sudo yum install snapd -y
    sudo systemctl enable --now snapd.socket
    sudo ln -s /var/lib/snapd/snap /snap
    systemctl start snapd
}