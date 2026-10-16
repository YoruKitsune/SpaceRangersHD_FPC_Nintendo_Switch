#!/bin/sh
# Usage: switch/docker/build.sh [base-image]   (run anywhere inside the checkout; needs Docker)
set -e
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
BASE="${1:-liberty-switch-dev}"
docker build --build-arg BASE_IMAGE="$BASE" -t srhd-switch-dev "$ROOT/switch/docker"
docker run --rm -v "$ROOT":/src -w /src srhd-switch-dev \
  sh -c 'git config --global --add safe.directory "*" && git submodule update --init --recursive && python3 tools/build.py --target=switch --release'
ls -la "$ROOT/.local/switch-aarch64/release/bin/"
