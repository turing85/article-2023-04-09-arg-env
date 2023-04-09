#!/usr/bin/env bash
set -e

TAG="${1:-22.04}"
podman build \
  --tag bash-example:ubuntu-"${TAG}" \
  --build-arg TAG="${TAG}" \
  -f ../../Containerfile \
  .