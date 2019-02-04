
# calculate requierd modules/softwares
# todo - currently all

# check which OS we are runnig on
OS_centos= $('cat /etc/*release | grep centos')
OS_ubuntu= $('cat /etc/*release | grep ubuntu')
OS_mint= $('cat /etc/*release | grep mint')

if [ ! OS_centos == "" ]; THEN
    OS=$OS_centos;
if [ ! OS_ubuntu == "" ]; THEN
    OS=$OS_ubuntu;
if [ ! OS_mint == "" ]; THEN
    OS=$OS_mint;

echo "OS: $OS"

# import relevant modules/function


# execute