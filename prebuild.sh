#!/bin/bash

docker run --rm -ti -v $(pwd):/usr/local/src/github.com/docker/swarm --workdir /usr/local/src/github.com/docker/swarm qnib/alpn-go-dev ./build.sh
docker run --rm -ti -v $(pwd):/usr/local/src/github.com/docker/swarm --workdir /usr/local/src/github.com/docker/swarm qnib/golang ./build.sh
