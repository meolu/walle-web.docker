#########################################################################
# File Name: scripts/nginx.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2018年12月18日 星期二 04时26分48秒
#########################################################################
#!/bin/bash
yum -y install libmcrypt libmcrypt-devel mhash mhash-devel mcrypt gd gd-devel pcre-devel openssl-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel bzip2 bzip2-devel libcurl libcurl-devel wget mysql-devel gcc gcc-c++ automake autoconf libtool make which

mkdir -p /soft && cd /soft
wget https://openresty.org/download/openresty-1.9.7.4.tar.gz
tar zxvf openresty-1.9.7.4.tar.gz
mkdir /usr/local/openresty/
chown work /usr/local/openresty/

cd /soft/openresty-1.9.7.4
./configure --with-http_realip_module
gmake && gmake install
cd /usr/local/openresty/nginx
cp conf /etc/nginx -rf
mv conf conf.default
ln -s /etc/nginx conf
ln -s /usr/local/openresty/nginx/sbin/nginx /usr/sbin/nginx
