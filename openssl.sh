#!/bin/bash

yum update -y
echo -e "\033[31m-----update complete----- \033[0m"
sleep 3
yum remove openssl openssl-devel -y
echo -e "\033[31m-----openssl old version unstall complete----- \033[0m"
sleep 3
yum install perl-IPC-Cmd perl-core perl-Module-Load-Conditional perl-CPAN -y
echo -e "\033[31m-----openssl install necessary package install complete----- \033[0m"
sleep 3
cd /opt
wget https://www.openssl.org/source/openssl-3.0.5.tar.gz
echo -e "\033[31m-----openssl download complete----- \033[0m"
sleep 3
tar zxvf openssl-3.0.5.tar.gz && rm -rf openssl-3.0.5.tar.gz
echo -e "\033[31m-----openssl unzip  & delete zip complete----- \033[0m"
cd openssl-3.0.5 
./Configure
echo -e "\033[31m-----openssl ./configure complete----- \033[0m"
sleep 3
make
echo -e "\033[31m-----openssl make complete----- \033[0m"
sleep 3
make test
echo -e "\033[31m-----openssl make test complete----- \033[0m"
sleep 3
make install
echo -e "\033[31m-----openssl make install complete----- \033[0m"
sleep 3
echo "/usr/local/lib64/" >> /etc/ld.so.conf
ldconfig
rm -rf /opt/openssl-3.0.5/
echo -e "\033[31m-----openssl install data delete----- \033[0m"
echo -e "\033[31m-----$(openssl version)---- \033[0m"
