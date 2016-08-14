npm install -g cnpm --registry=https://registry.npm.taobao.org
ln -s /usr/bin/nodejs /usr/bin/node
/usr/bin/npm install -g hexo
mkdir hexo
chmod 644 -R hexo
cd hexo
/usr/bin/hexo init
/usr/bin/git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia
rm _config.yml
