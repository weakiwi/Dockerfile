#!/bin/bash
PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "it will start apt-get update and install wget and curl \n\n"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget curl git -y
echo -e "1) install lnmp \n\n"
echo -e "2) install vim and spf13 \n\n"
echo -e "3) install zsh and oh-my-zsh \n\n"
echo -e "4) install all of this \n\n"
read -p "Please input: " user_input
if[$user_input = 1];then
    /bin/bash /root/install_lnmp.sh
if[$user_input = 2];then
    curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
if[$user_input = 3];then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo -e "input error"


exit 0
