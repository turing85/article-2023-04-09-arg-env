#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target alpine-runner \
  --build-arg TEMURIN_VERSION="${1:-}" \
  --tag hello-world:alpine \
  ../../