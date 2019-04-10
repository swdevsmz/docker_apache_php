#!/bin/bash

setenforce 0
sed -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config > tmp
mv tmp /etc/selinux/config

systemctl stop firewalld
systemctl enable firewalld


#
yum install -y yum-utils  device-mapper-persistent-data  lvm2

yum-config-manager  --add-repo  https://download.docker.com/linux/centos/docker-ce.repo

yum -y install docker-ce

systemctl start docker
systemctl enable docker

docker pull ibmcom/db2express-c

docker save ibmcom/db2express-c > db2express-c:10.5.05.tar


echo "Hello World"
exit 0
