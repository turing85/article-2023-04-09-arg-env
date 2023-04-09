#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target distroless-runner \
  --build-arg TEMURIN_JDK_VERSION=17.0.6_10-jdk-alpine \
  --build-arg DISTROLESS_JRE_VERSION=nonroot \
  --tag hello-world:distroless \
  ../../