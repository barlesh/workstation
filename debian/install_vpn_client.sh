wget -O - https://repo.fortinet.com/repo/ubuntu/DEB-GPG-KEY | sudo apt-key add - 

echo "deb [arch=amd64] https://repo.fortinet.com/repo/ubuntu/ /bionic multiverse" >>  /etc/apt/sources.list

 sudo apt-get update 
 sudo apt install forticlient -y 