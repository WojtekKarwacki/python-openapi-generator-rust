#!/bin/bash

set -eox pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
cd "$SCRIPT_DIR" || exit

rm -rf dist
uv venv
source .venv/bin/activate
uv pip install poetry

cp ../../README.md README.md

poetry build

pipx install twine
