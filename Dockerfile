FROM ubuntu:14.04
MAINTAINER weakiwi <dengyi0215@gmail.com>


ADD sources.list /etc/apt/sources.list
ADD install_lnmp.sh /root/install_lnmp.sh
ADD install_vim.sh /root/install_vim.sh
ADD install_zsh.sh /root/install_zsh.sh
ADD install_python.sh /root/install_python.sh
ADD init.sh /root/init.sh
ADD update.sh /root/update.sh

ENTRYPOINT /bin/bash /root/init.sh

EXPOSE 22
EXPOSE 3306
EXPOSE 80
