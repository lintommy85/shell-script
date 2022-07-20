#!/bin/bash

sudo yum update -y
echo -e "\033[31m-----update complete----- \033[0m"
sleep 3
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
echo -e "\033[31m-----docker old version unstall complete----- \033[0m"
sleep 3
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
echo -e "\033[31m-----docker-ce repo install complete----- \033[0m"
sleep 3
#show docker-ce version list
#yum list docker-ce --showduplicates | sort -r

#show docker-ce-cli version list
#yum list docker-ce-cli --showduplicates | sort -r
#docker-ce and docker-ce-cli version must be match

#install docker-ce specified version
#yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin

#install docker-ce release version
yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

echo -e "\033[31m-----docker-ce install complete----- \033[0m"
echo -e "\033[31m-----$(docker -v)----- \033[0m"
echo -e "\033[31m-----$(docker-compose -v)----- \033[0m"
