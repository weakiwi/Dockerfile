#!/bin/sh
test -e /blog/a.txt
if [ $? -eq 0 ]; then
    vi $(date -d yesterday +%F).md
    hexo g
    hexo d
else
    echo "first time to do these"
    touch /blog/a.txt
    hexo init
    read -p "enter your github pages name:" add
    sed -i s/myusername/${add}/g /blog/_config.yml
    read -p "enter your github pages branch:" branch
    sed -i s/bbb/${branch}/g /blog/_config.yml
    cp /blog/_config.yml ./_config.yml    
fi
