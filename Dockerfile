FROM daocloud.io/library/ubuntu:14.04.5
MAINTAINER weakiwi <dengyi0215@gmail.com>
#RUN rm /etc/apt/sources.list
#ADD sources.list /etc/apt/sources.list
#RUN chmod a+x /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install npm
ADD installhexo.sh /root/installHexo.sh
ADD installYilia.sh /root/installYilia.sh
ADD _config.yml /root/_config.yml
RUN chmod a+x /root/installHexo.sh
RUN chmod a+x /root/installYilia.sh
RUN  /root/installHexo.sh
ENTRYPOINT /bin/bash /root/installYilia.sh
EXPOSE 4000
