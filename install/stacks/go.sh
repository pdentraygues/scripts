#!/bin/bash

echo "Installing golang 1.12.2"
wget https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
sudo tar -zxvf go1.12.2.linux-amd64.tar.gz
sudo mv go /usr/local


echo 'export GOROOT=/usr/local/go' >> ~/.profile
echo 'export GOPATH=$HOME/go' >> ~/.profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile

source ~/.profile

echo "Installing protoc 3.7.1"
curl -OL https://github.com/google/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip

unzip protoc-3.7.1-linux-x86_64.zip -d protoc3

sudo mv protoc3/bin/* /usr/local/bin/
sudo mv protoc3/include/* /usr/local/include/

sudo chown $USER /usr/local/bin/protoc
sudo chown -R $USER /usr/local/include/google

echo "Install grpc for golang"
go get -u google.golang.org/grpc

echo "Install protoc gen for go"
go get -u github.com/golang/protobuf/protoc-gen-go
