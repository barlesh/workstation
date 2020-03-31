#! /bin/bash

function install_slack() {
    wget https://downloads.slack-edge.com/linux_releases/slack-4.0.2-0.1.fc21.x86_64.rpm
    
    sudo yum localinstall ./slack-*.rpm
    
}