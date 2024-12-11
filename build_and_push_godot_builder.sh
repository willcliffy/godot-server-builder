#!/bin/bash

# DOCKER_PLATFORM_ARG="--platform linux/amd64"

# ARCH=$(uname -m)
# echo "Running on platform $OSTYPE with architecture $ARCH"

# # Need to check this since building/running linux images on M1 Macs is funny sometimes.
# if [[ "$OSTYPE" == "darwin"* && "$ARCH" == "arm64" ]]; then
#     DOCKER_PLATFORM_ARG="--platform linux/amd64"
# fi

# set -x

docker build \
    --platform linux/amd64 \
    --file Dockerfile.builder \
    --tag willcliffy/godot-server-builder \
    --tag willcliffy/godot-server-builder:4.3 \
    . \
    || exit 1

# set +x

docker push willcliffy/godot-server-builder:latest
docker push willcliffy/godot-server-builder:4.3
