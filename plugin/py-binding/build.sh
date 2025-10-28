#!/bin/bash

set -eox pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
cd "$SCRIPT_DIR" || exit

pipx install maturin

cp ../../README.md README.md

rm -rf target
maturin build --release
