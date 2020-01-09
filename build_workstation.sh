
# calculate requierd modules/softwares
# todo - currently all

# check which OS we are runnig on
OS_centos=$(cat /etc/*release | grep centos)
OS_ubuntu=$(cat /etc/*release | grep ubuntu)
OS_mint=$(cat /etc/*release | grep mint)

if [ ! "$OS_centos" == "" ]; then
    OS="centos";
    source /fedora/install*
fi

if [ ! "$OS_ubuntu" == "" ]; then
    OS="ubuntu";
    source debian/install_git.sh
    source debian/install_google_chrome.sh
    source debian/install_vscode.sh
fi

if [ ! $OS_mint == "" ]; then
    OS="mint";
fi

echo "OS: $OS"

# import relevant modules/function

# execute