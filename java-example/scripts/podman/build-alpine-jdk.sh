#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target alpine-jdk-runner \
  --build-arg TEMURIN_VERSION="${1:-}" \
  --tag hello-world:alpine-jdk \
  ../../