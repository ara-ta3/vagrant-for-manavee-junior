#! /bin/sh

yum install -y gcc git mercurial ncurses-devel lua lua-devel
cd /usr/local/src
hg clone https://vim.googlecode.com/hg/ vim
cd /usr/local/src/vim
./configure --enable-multibyte \
    --with-features=huge \
    --disable-selinux \
    --prefix=/usr/local \
    --enable-luainterp=yes \
    --with-lua-prefix=/usr
make
make install
