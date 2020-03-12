#!/usr/bin/env bash
# build, tag, and push docker images

# exit if a command fails
set -o errexit

# exit if required variables aren't set
set -o nounset

# set version of nginx to build
version="1.17.9"

# set current directory as base directory
basedir="$(pwd)"

# build docker and copy build artifacts to volume mount
docker run -it --rm -e "NGINX=$version" -v "$basedir"/artifacts:/build alpine:latest /bin/ash -c "`cat ./scripts/build-nginx-docker.sh`"

# copy nginx binary to image build directory
cp "$basedir"/artifacts/nginx-"$version" "$basedir"/image/nginx

# create docker run image
docker build -t docker-registry-proxy:latest "$basedir"/image/.

# remove nginx binary from image build directory
rm "$basedir"/image/nginx
