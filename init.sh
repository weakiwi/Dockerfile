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
    /bin/bash /root/install_vim.sh
if[$user_input = 3];then
    /bin/bash /root/install_zsh.sh
else
    echo -e "input error"


exit 0
