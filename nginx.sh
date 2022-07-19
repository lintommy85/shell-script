#!/bin/bash

yum update -y
echo -e "\033[31m----- yum update complete----- \033[0m"
sleep 3
yum install pcre pcre-devel zlib zlib-devel openssl openssl-devel -y
echo -e "\033[31m-----nginx dependency package install complete----- \033[0m"
sleep 3
systemctl stop firewalld.service
systemctl disable firewalld.service
echo -e "\033[31m-----firewall stop&disable----- \033[0m"
sleep 3
cd /opt
wget http://nginx.org/download/nginx-1.20.2.tar.gz
echo -e "\033[31m-----nginx download complete----- \033[0m"
sleep 3
tar zxvf nginx-1.20.2.tar.gz && rm -rf nginx-1.20.2.tar.gz
echo -e "\033[31m-----nginx unzip & delete zip complete----- \033[0m"
cd nginx-1.20.2
./configure --prefix=/opt/nginx --with-http_ssl_module
echo -e "\033[31m-----nginx ./configure complete----- \033[0m"
sleep 3
make
echo -e "\033[31m-----nginx make complete----- \033[0m"
make install
echo -e "\033[31m-----nginx make install complete----- \033[0m"
sleep 3
rm -rf /opt/nginx-1.20.2/
echo -e "\033[31m-----nginx install data delete----- \033[0m"
