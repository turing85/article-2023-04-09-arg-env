#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target alpine-jdk-runner \
  --build-arg TEMURIN_JDK_VERSION=17.0.6_10-jdk-alpine \
  --tag hello-world:alpine-jdk \
  ../../