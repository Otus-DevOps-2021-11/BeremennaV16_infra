#!/bin/bash

sudo apt-get update
sudo apt-get git
git clone -b monolith https://github.com/express42/reddit.git
cd /reddit/
bundle install
echo "Введите внешний ip сервера"
read ip
export SERVER_IP=$ip
echo "Введите REPO_NAME"
read repo_name
export REPO_NAME=$repo_name
export DEPLOY_USER=deploy
bundle exec cap production deploy:initial
