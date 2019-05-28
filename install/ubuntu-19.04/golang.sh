#!/bin/bash

wget https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
sudo tar -zxvf go1.12.2.linux-amd64.tar.gz
sudo mv go /usr/local


echo 'export GOROOT=/usr/local/go' >> ~/.profile
echo 'export GOPATH=$HOME/go' >> ~/.profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile
