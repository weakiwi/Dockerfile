FROM daocloud.io/node:0.10-onbuild
MAINTAINER weakiwi <dengyi0215@gmail.com>
ADD installHexo.sh /root/installHexo.sh
ADD installYila.sh /root/installYila.sh
ADD _config.yml /root/_config.yml
RUN chmod a+x
EXPOSE 4000