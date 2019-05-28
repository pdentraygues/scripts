#!/bin/bash

echo "Get the last protobuf version"
curl -OL https://github.com/google/protobuf/releases/download/v3.7.1/protoc-3.7.1-linux-x86_64.zip

echo "Unzip the protoc archive"
unzip protoc-3.7.1-linux-x86_64.zip -d protoc3

echo "Move protoc to /usr/local/bin/"
sudo mv protoc3/bin/* /usr/local/bin/

echo "Move protoc3/include to /usr/local/include/"
sudo mv protoc3/include/* /usr/local/include/

echo "Change owner"
sudo chown $USER /usr/local/bin/protoc
sudo chown -R $USER /usr/local/include/google

echo "Get grpc for golang"
go get -u google.golang.org/grpc

echo "Get protoc gen for go"
go get -u github.com/golang/protobuf/protoc-gen-go

