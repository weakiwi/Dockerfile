FROM ubuntu:14.04
MAINTAINER weakiwi <dengyi0215@gmail.com>


ADD sources.list /etc/apt/sources.list
RUN sudo touch /root/install_lnmp.sh
RUN sudo touch /root/init.sh
ADD install_lnmp.sh /root/install_lnmp.sh
ADD init.sh /root/init.sh
ADD update.sh /root/update.sh

ENTRYPOINT /bin/bash /root/init.sh

EXPOSE 22
EXPOSE 3306
EXPOSE 80
