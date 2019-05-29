#!/bin/bash

echo "Installing docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge"

sudo apt-get update

sudo apt-get install -y docker.io

sudo usermod -aG docker ${USER}

echo "Installing docker-compose"
sudo apt-get install -y docker-compose
