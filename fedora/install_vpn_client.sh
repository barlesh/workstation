#! /bin/bash

function install_vpn_client() {
    sudo tar -xvf linux_apps/forti.tar -C /opt/
    sudo chmod +x /opt/forticlient-sslvpn/forticlientsslvpn.sh
    sudo ln -s /opt/forticlient-sslvpn/forticlientsslvpn.sh /usr/local/bin/vpn
}