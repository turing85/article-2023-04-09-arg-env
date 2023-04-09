#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target alpine-runner \
  --build-arg TEMURIN_JDK_VERSION=17.0.6_10-jdk-alpine \
  --build-arg TEMURIN_JRE_VERSION=17.0.6_10-jre-alpine \
  --tag hello-world:alpine \
  ../../