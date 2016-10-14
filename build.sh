#!/bin/bash

GIT_TAG=$(git describe --abbrev=0 --tags)
if [ -f /etc/os-release ];then
    . /etc/os-release
    if [ "X${ID}" != "Xalpine" ];then
      ID=linux
    fi
else
    ID=$(uname -s)
fi
ARCH=$(echo ${ID} |tr '[:upper:]' '[:lower:]')
go get -d
go build -o swarm_${GIT_TAG}_${ARCH}
