#!/bin/bash

sudo apt update -y
sudo rm /var/lib/dpkg/lock*
sudo apt install -y ruby-full ruby-bundler build-essential 
