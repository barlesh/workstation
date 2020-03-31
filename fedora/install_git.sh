#! /bin/bash

function install_git() {
    sudo yum install https://centos7.iuscommunity.org/ius-release.rpm -y
    sudo yum erase git
    sudo yum install epel-release -y
    sudo yum install git2u -y
}