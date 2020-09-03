#!/usr/bin/env bash
# build, tag, and push docker images

# exit if a command fails
set -o errexit

# exit if required variables aren't set
set -o nounset

# set version of nginx to build
version="1.19.2"
build_version="$version".0

# create docker run image
docker build \
	-t docker-registry-proxy:latest \
	-t docker-registry-proxy:"$build_version" .

# push the image to registry
#docker push docker.galenguyer.com/chef/docker-registry-proxy:"$build_version"
#docker push docker.galenguyer.com/chef/docker-registry-proxy:latest
