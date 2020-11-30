#!/usr/bin/env sh
set -e
docker build --build-arg http_proxy=${http_proxy} --build-arg https_proxy=${https_proxy} -t wasi-sdk-builder:latest .
docker run --mount type=bind,src=$PWD,target=/workspace --workdir /workspace  wasi-sdk-builder:latest make build
