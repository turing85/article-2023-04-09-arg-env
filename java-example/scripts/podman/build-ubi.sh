#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target ubi-runner \
  --build-arg TEMURIN_VERSION="${1:-}" \
  --build-arg UBI_JRE_VERSION="${2:-}" \
  --tag hello-world:ubi \
  ../../