#! /bin/bash

function install_virtualbox(){
    sudo yum install -y kernel-devel kernel-headers gcc make perl -y
    cd /tmp
    wget https://www.virtualbox.org/download/oracle_vbox.asc
    sudo rpm --import oracle_vbox.asc
    sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
    sudo yum install -y VirtualBox-6.0
    cd -

}