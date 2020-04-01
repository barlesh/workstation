
#! /bin/bash

function install_google_chrome() {
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm


sudo yum localinstall google-chrome-stable_current_x86_64.rpm -y

}