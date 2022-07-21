#!/bin/bash

echo -e "\033[31m-----install python-3.9 yous openssl version minimum must be 1.1.1----- \033[0m"
sleep 10
yum update -y
echo -e "\033[31m-----yum update complete----- \033[0m"
sleep 3
yum -y install bzip2-devel  ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel -y
echo -e "\033[31m-----python dependency package install complete----- \033[0m"
sleep 3
cd /opt
wget https://www.python.org/ftp/python/3.9.13/Python-3.9.13.tar.xz
echo -e "\033[31m-----python download complete----- \033[0m"
sleep 3
tar Jxvf Python-3.9.13.tar.xz && rm -rf Python-3.9.13.tar.xz
echo -e "\033[31m-----python unzip & delete zip complete----- \033[0m"
cd Python-3.9.13
./configure --prefix=/opt/python
echo -e "\033[31m-----python ./configure complete----- \033[0m"
sleep 3
make
echo -e "\033[31m-----python make complete----- \033[0m"
make install
echo -e "\033[31m-----python make install complete----- \033[0m"
sleep 3
rm -rf /opt/Python-3.9.13/
echo -e "\033[31m-----pythoninstall data delete----- \033[0m"
echo -e "\033[31m-----$(pythin3 -V)----- \033[0m"
