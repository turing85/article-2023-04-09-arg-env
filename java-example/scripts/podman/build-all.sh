#!/usr/bin/env bash
set -e

./build-alpine-jdk.sh
./build-alpine.sh
./build-distroless.sh
./build-ubi.sh