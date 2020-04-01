

CYAN="\033[0;36m"
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

function errorHandler {
    
    errorCode=$1
    errorMessage=$2
    
    if [ $errorCode -ne 0 ]; then
        echo -e "${RED}$errorMessage${NC}"
        exit 1
    fi
    
}


# permissions (must be non root!)

if [ !  $EUID -eq 0 ];
then
    echo -e "${RED}must be executed with root permissions. exiting${NC}"
    exit 1
fi

# calculate requierd modules/softwares
# todo - currently all

# check which OS we are runnig on
OS_centos=$(cat /etc/*release | grep centos)
OS_ubuntu=$(cat /etc/*release | grep ubuntu)
OS_mint=$(cat /etc/*release | grep mint)

if [ ! "$OS_centos" == "" ]; then
    OS="centos";
    for f in fedora/install*; do echo "source $f"; source $f; done
    # source /fedora/install*
fi

if [ ! "$OS_ubuntu" == "" ]; then
    OS="ubuntu";
    for f in debian/install*; do source $f; done
    # source debian/install*
fi



echo "OS: $OS"

# PACKAGE_LIST=( git docker docker_compose slack google_chrome node postman vpn_client vscode clion virtualbox )
PACKAGE_LIST=( docker docker_compose slack google_chrome postman vpn_client vscode clion virtualbox )
# echo "PACKAGE_LIST: $PACKAGE_LIST"
# Read the array values with space
for PACKAGE in "${PACKAGE_LIST[@]}"; do
    echo -e "${CYAN}installing  $PACKAGE${NC}"
    install_$PACKAGE
    errorHandler $? "failed installing $PACKAGE"
done


# import relevant modules/function

# execute