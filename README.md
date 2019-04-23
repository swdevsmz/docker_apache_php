# docker_apache_php

## 最初にこのスクリプトを実行
https://github.com/swdevsmz/Db2Developer-ConDocker/blob/master/init.sh

## Docker公式phpイメージでpullするタグを検索
https://hub.docker.com/_/php/

## 少し古いイメージを取得
docker pull php:5.6-apache

## イメージの確認
docker images

## wiki用ディレクトリを作成し、権限を付与
mkdir /Docker
cd Docker
mkdir wiki
cd wiki
mkdir html
chmod -R 777 html

## composeファイルを編集
vi docker-compose.yml

## コンテナの起動
docker-compose up -d
