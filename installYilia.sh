#!/bin/sh
test -e /root/a.txt
if [ $? -eq 0 ]; then
    cd /root/hexo
    currentDate = $(date -d yesterday +%F)
    vi /root/hexo/source/_post/$(date -d yesterday +%F).md
    hexo g
    hexo d
else
    echo "first time to do these"
    touch /root/a.txt
    hexo init
    read -p "enter your github pages name:" add
    sed -i s/myusername/${add}/g /root/_config.yml
    read -p "enter your github pages branch:" branch
    sed -i s/bbb/${branch}/g /root/_config.yml
    cp /root/_config.yml /root/hexo/_config.yml    
fi
