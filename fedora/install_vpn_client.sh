#! /bin/bash

function install_vpn_client() {
    sudo mkdir /opt/fortinetvpnssl
    tar -xvf fedora/rpm/forticlientsslvpn_linux_4-0-2281-tar.gz -C /opt/fortinetvpnssl/
}