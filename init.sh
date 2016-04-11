#!/bin/bash
if [-f /root/count.session]; then
    echo "already configured!"
    exit 0
else
    touch /root/count.session
    echo -e "it will start apt-get update and install wget and curl \n\n"
    sh /root/update.sh
    echo -e "1) install lnmp \n"
    echo -e "2) install vim and spf13 \n"
    echo -e "3) install zsh and oh-my-zsh \n"
    echo -e "4) install all of this \n"
    read -p "Please input: " user_input
    case $user_input in
        1) /bin/bash /root/install_lnmp.sh ;;
        2) /bin/bash /root/install_vim.sh ;;
        3) /bin/bash /root/install_zsh.sh ;;
        4) /bin/bash /root/install_zsh.sh
    esac    
fi

exit 0
