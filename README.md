# docker_apache_php

$yum install epel-release

$yum update

$systemctl stop firewalld 
$systemctl enable firewalld 

#SELinuxの無効化
#確認
getenforce

#無効化
setenforce 0

#有効化
setenforce 1

$vi /etc/selinux/config
SELINUX=enforcing
↓
SELINUX=disabled


$yum -y install docker

$docker version

$ systemctl start docker.service
$ systemctl enable docker.service

$ mkdir php_apache
$ cd php_apache/
$ touch Dockerfile

$ vi Dockerfile
FROM php:7.2.7-apache

$ docker build ./ -t php_apache_image:ver001

$ docker images

$ mkdir html
$ cd html
$ touch index.php

$ vi index.php
<?php echo 'Hello Docker'; ?>

$ docker run -itd -p 80:80 -v /root/Docker/php_apache/html:/var/www/html --name wiki php_apache_image:ver001

$ docker exec -it wiki /bin/bash

$ docker start wiki
$ docker stop wiki
$ docker ps -al

#ソースを展開、ディレクトリのパーミッションの設定
https://pukiwiki.osdn.jp/?PukiWiki/Install/%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%96%B9%E6%B3%95#aa4d05e6

