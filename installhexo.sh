alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

cnpm install -g hexo
mkdir hexo
chmod 644 -R hexo
cd hexo
hexo init
git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia
rm _config.yml
