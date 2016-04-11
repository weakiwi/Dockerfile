FROM ubuntu:14.04
MAINTAINER weakiwi <dengyi0215@gmail.com>
ADD sources.list /etc/apt/sources.list
ADD install_lnmp.sh /root/install_lnmp.sh
ADD init.sh /root/init.sh
RUN sudo chmod a+x install_lnmp.sh
RUN sudo chmod a+x init.sh
