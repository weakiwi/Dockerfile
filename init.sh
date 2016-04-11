#!/bin/bash
echo -e "it will start apt-get update and install wget and curl \n\n"
sh /root/update.sh
echo -e "1) install lnmp \n\n"
echo -e "2) install vim and spf13 \n\n"
echo -e "3) install zsh and oh-my-zsh \n\n"
echo -e "4) install all of this \n\n"
read -p "Please input: " user_input
if[$user_input=="1"]; then
    /bin/bash install_lnmp.sh
elif[$user_input=="2"]; then
    /bin/bash install_vim.sh
elif[$user_input=="3"]; then
    /bin/bash install_zsh.sh
else
    echo -e "input error"
fi    


exit 0
