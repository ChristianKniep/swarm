all: linux alpine

alpine:
	docker run --rm -ti -v $(CURDIR):/usr/local/src/github.com/docker/swarm --workdir /usr/local/src/github.com/docker/swarm qnib/alpn-go-dev ./build.sh
linux:
	docker run --rm -ti -v $(CURDIR):/usr/local/src/github.com/docker/swarm --workdir /usr/local/src/github.com/docker/swarm qnib/golang ./build.sh
