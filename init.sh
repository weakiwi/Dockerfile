#!/bin/bash
echo -e "it will start apt-get update and install wget and curl \n\n"
sh /root/update.sh
echo -e "1) install lnmp \n"
echo -e "2) install vim and spf13 \n"
echo -e "3) install zsh and oh-my-zsh \n"
echo -e "4) install all of this \n"
read -p "Please input: " user_input
case $user_input in
    1) /bin/bash install_lnmp.sh ;;
    2) /bin/bash install_vim.sh ;;
    3) /bin/bash install_zsh.sh ;;
esac    


exit 0
