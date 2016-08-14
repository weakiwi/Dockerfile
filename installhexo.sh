npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm install -g hexo
mkdir hexo
chmod 644 -R hexo
cd hexo
hexo init
git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia
rm _config.yml
