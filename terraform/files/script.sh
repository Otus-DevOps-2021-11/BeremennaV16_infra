#!/bin/bash
sleep 1m
set -e
echo "1"
APP_DIR=${1:-$HOME}
echo "2"
sudo apt-get update
echo "3"
sudo apt-get install -y git 2>> error.txt
echo "4"
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
echo "5"
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
