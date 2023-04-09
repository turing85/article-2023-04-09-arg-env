#!/usr/bin/env bash
set -e

podman build \
  --file ../../Containerfile \
  --target distroless-runner \
  --build-arg TEMURIN_VERSION="${1:-}" \
  --build-arg DISTROLESS_JRE_VERSION="${2:-}" \
  --tag hello-world:distroless \
  ../../