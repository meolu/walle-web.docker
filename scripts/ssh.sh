#########################################################################
# File Name: scripts/ssh.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2018年12月18日 星期二 04时35分12秒
#########################################################################
#!/bin/bash
yum install -y sudo
useradd  -ms /bin/bash -g root work
echo "work    ALL=(ALL)       NOPASSWD:ALL" >> /etc/sudoers
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install virtualenv
systemctl enable sshd
