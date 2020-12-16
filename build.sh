#!/usr/bin/env bash
# build, tag, and push docker images

# exit if a command fails
set -o errexit

# exit if required variables aren't set
set -o nounset

# create docker run image
docker build -t docker-registry-proxy:latest -t docker.galenguyer.com/chef/docker-registry-proxy:latest .

# push the image to registry
docker push docker.galenguyer.com/chef/docker-registry-proxy:latest
