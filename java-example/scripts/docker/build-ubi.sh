#!/usr/bin/env bash
set -e

docker build \
  --file ../../Containerfile \
  --target ubi-runner \
  --build-arg TEMURIN_JDK_VERSION=17.0.6_10-jdk-alpine \
  --build-arg UBI_JRE_VERSION=1.15 \
  --tag hello-world:ubi \
  ../../