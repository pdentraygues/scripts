#!/bin/bash

echo "Installing golang 1.13.4"
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo tar -zxvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/local


echo 'export GOROOT=/usr/local/go' >> ~/.profile
echo 'export GOPATH=$HOME/go' >> ~/.profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile

source ~/.profile

echo "Installing protoc 3.10.1"
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

echo "Install protoc gen for grpc gateway"
go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway

echo "Install protoc gen for swagger"
go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

echo "Install godog tool"
go get -u github.com/DATA-DOG/godog/cmd/godog

