#########################################################################
# File Name: scripts/yum.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2018年12月18日 星期二 04时38分20秒
#########################################################################
#!/bin/bash
yum install -y gcc gcc-c++ python-devel openssh-server
yum -y install libmcrypt libmcrypt-devel mhash mhash-devel mcrypt gd gd-devel pcre-devel openssl-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel libxml2 libxml2-devel bzip2 bzip2-devel libcurl libcurl-devel wget mysql-devel gcc gcc-c++ automake autoconf libtool make which
